class BrandsController < ApplicationController

  def index
    if (params[:student_id])
      @student = Student.find(params[:student_id])
      @brands = @student.brands.all
    else
      @students = Student.all
      @brands = @students.map{|s| s.brands.last}.compact
    end
  end
  # //adrian says I should move show to here - need help and define student here

  def new
    @student = Student.find(params[:student_id])
    @brand = @student.brands.new
  end

  def create
    @student = Student.find(params[:student_id])
    @brand = @student.brands.create!(brand_params)
    redirect_to student_brand_path(@student,@brand)
  end

  def show
    @student = Student.find(params[:student_id])
    @brand = @student.brands.find(params[:id])
  end

  def edit
    @student = Student.find(params[:student_id])
    @brand = @student.brands.find(params[:id])
  end

  def update
    @student = Student.find(params[:student_id])
    @brand = @student.brands.find(params[:id])
    @brand.update(brand_params)
    redirect_to student_brand_path(@student,@brand)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @brand = @student.brands.find(params[:id])
    @brand.destroy

    redirect_to student_brands_path(@student)
  end

  private
  def brand_params
    params.require(:brand).permit(:body)
  end

end
