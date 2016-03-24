class CompaniesController < ApplicationController
  def index
    if (params[:student_id])
      @companies = @student.company.all
    else
    @companies = Company.all
    end
  end

  def new
    @student = Student.find(params[:student_id])
    @company = @student.companies.new
  end

  def create
    @student = Student.find(params[:student_id])
    @company = @student.companies.create!(company_params)
    redirect_to student_company_path(@student,@company)
  end

  def show
    @student = Student.find(params[:student_id])
    @company = @student.companies.find(params[:id])
  end

  def edit
    @student = Student.find(params[:student_id])
    @company = @student.companies.find(params[:id])
  end

  def update
    @student = Student.find(params[:student_id])
    @company = @student.companies.find(params[:id])
    @company.update(company_params)
    redirect_to student_company_path(@student,@company)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @company = @student.companies.find(params[:id])
    @company.destroy

    redirect_to student_company_path(@student,@company)
  end

  private
    def company_params
      params.require(:company).permit(:body)
    end

end
