class MeetupsController < ApplicationController

  def index
    if (params[:student_id])
      @meetups = @student.meetup.all
    else
    @meetups = Meetup.all
    end
  end

  def new
    @student = Student.find(params[:student_id])
    @meetup = @student.meetups.new
  end

  def create
    @student = Student.find(params[:student_id])
    @meetup = @student.meetups.create!(meetup_params)
    redirect_to student_meetup_path(@student,@meetup)
  end

  def show
    @student = Student.find(params[:student_id])
    @meetup = @student.meetups.find(params[:id])
  end

  def edit
    @student = Student.find(params[:student_id])
    @meetup = @student.meetups.find(params[:id])
  end

  def update
    @student = Student.find(params[:student_id])
    @meetup = @student.meetups.find(params[:id])
    @meetup.update(meetup_params)
    redirect_to student_meetup_path(@student,@meetup)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @meetup = @student.meetups.find(params[:id])
    @meetup.destroy

    redirect_to student_meetup_path(@student,@meetup)
  end

  private
    def meetup_params
      params.require(:meetup).permit(:meetup_name, :location, :date_of_meetup)
    end
end
