class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.create!(brand_params)
    redirect_to brands_path(@brands)
  end

  def show
    @brand = Brand.find(params[:student_id])
  end

  def edit
    @brand = Brand.find(params[:student_id])
  end

  def update
    @brand = Brand.find(params[:student_id])
    @brand.update(brand_params)
    redirect_to brands_path(@brand)
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to brands_path
  end

  private
    def brand_params
      params.require(:brand).permit(:body)
    end

end
