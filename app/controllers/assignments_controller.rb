class AssignmentsController < ApplicationController
  before_action :find_assignment, only: [:show, :edit, :update, :destroy]

  def index
    @assignments = Assignment.all
  end

  def show
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.create!(assignment_params)
    if @assignment.save
      redirect_to assignments_index_path, notice: "Assignment was saved successfully!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @assignment.update(assignment_params)
      redirect_to @assignment, notice: "Assignment updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @assignment.destroy
    redirect_to assignments_index_path
  end

  private
  def assignment_params
    params.require(:assignment).permit(:title, :instructions, :due_date, :ga_focus)
  end

  def find_assignment
    @assignment = Assignment.find(params[:id])
  end
end
