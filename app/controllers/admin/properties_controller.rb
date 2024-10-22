class Admin::PropertiesController < ApplicationController
  before_action :require_admin
  before_action :set_property, only: [:edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to admin_properties_path, notice: 'Property created successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to admin_properties_path, notice: 'Property updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to admin_properties_path, notice: 'Property deleted successfully.'
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :price, :location, :description, :agent_id, images: [])
  end
end
