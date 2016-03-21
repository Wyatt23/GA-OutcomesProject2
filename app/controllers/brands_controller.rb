class BrandsController < ApplicationController

  def index
    @brands = Brand.all.reverse
    # may change, depends - could use Brand.last for last one not sure
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.create(brand_params)
    redirect_to students_path
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def edit
    @brand = Brand.find(params[:id])
    redirect_to brands_path
  end

  def update
    @brand = Brand.find(params[:id])
    @brand.update(brand_params)
    redirect_to brands_path
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
