class StudentsController < ApplicationController

  def index
    @students = Student.order(:last_name)
  end

  def new
    @student = Student.new
    # redirect to?
  end

  def create
    @student = Student.create(student_params)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
  end

  def destroy
    @student = Student.find(params[:id])
    @artist.destroy
    redirect_to students_path
  end

  private
    def student_params
      params.require (:student).permit(:first_name, :last_name, :ga_focus, :cohort_number)
    end

end
