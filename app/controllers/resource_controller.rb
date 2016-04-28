class ResourceController < ApplicationController
  before_action :find_resource, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all
  end

  def show
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.create!(resource_params)
    if @resource.save
      redirect_to resources_index_path, notice: "Resource was saved successfully!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @resource.update(resource_params)
      redirect_to @resource, notice: "Resource updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @resource.destroy
    redirect_to resources_index_path
  end

  private
  def resource_params
    params.require(:resource).permit(:topic, :url, :ga_focus)
  end

  def find_resource
    @resource = Resource.find(params[:id])
  end
  end
