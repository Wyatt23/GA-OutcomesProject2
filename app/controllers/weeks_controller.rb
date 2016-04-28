class WeeksController < ApplicationController

  def index
    @weeks = Week.all
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.create!(week_params)
    redirect_to weeks_path
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    @week.update(week_params)
    redirect_to weeks_path
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy
    redirect_to weeks_path
  end

  private
  def week_params
    params.require(:week).permit(:week_number, :title, :intro, :speakers, :goal, :themes, :notes)
  end

end
