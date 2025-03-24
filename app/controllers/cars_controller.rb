class CarsController < ApplicationController
  before_action :set_car, only: [:show]

  def index
    @cars = Car.all

    # Apply filters
    @cars = @cars.where(brand: params[:brand]) if params[:brand].present?
    @cars = @cars.where("model_year >= ?", params[:min_year]) if params[:min_year].present?
    @cars = @cars.where("price <= ?", params[:max_price]) if params[:max_price].present?
    @cars = @cars.where("range >= ?", params[:min_range]) if params[:min_range].present?

    # Apply search
    if params[:search].present?
      search_term = "%#{params[:search]}%"
      @cars = @cars.where("brand ILIKE ? OR name ILIKE ?", search_term, search_term)
    end

    # Get unique brands for filter dropdown
    @brands = Car.distinct.pluck(:brand).sort
  end

  def show
  end

  def compare
    @cars = Car.all
    
    if params[:car1_id].present?
      @car1 = Car.find(params[:car1_id])
    else
      @car1 = Car.first
    end

    if params[:car2_id].present?
      @car2 = Car.find(params[:car2_id])
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
