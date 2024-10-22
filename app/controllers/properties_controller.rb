class PropertiesController < ApplicationController
  def index
    @properties = Property.all
    if params[:search].present?
      @properties = @properties.where("location LIKE ?", "%#{params[:search]}%")
    end
    @properties = @properties.page(params[:page]).per(9)  # Add pagination
  end
  def show
    @property = Property.find(params[:id])
  end
  def search
    @properties = Property.all
    @properties = @properties.where("location LIKE ?", "%#{params[:search]}%") if params[:search].present?
    @properties = @properties.where("price >= ?", params[:min_price]) if params[:min_price].present?
    @properties = @properties.where("price <= ?", params[:max_price]) if params[:max_price].present?
    @properties = @properties.page(params[:page]).per(9)
  end
end
