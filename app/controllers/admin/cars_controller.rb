class Admin::CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to admin_cars_path, notice: 'Car was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to admin_cars_path, notice: 'Car was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to admin_cars_path, notice: 'Car was successfully deleted.'
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(
      :brand, :name, :model_year, :price, :range, :battery_capacity,
      :charging_time, :power, :torque, :acceleration, :top_speed,
      :dimensions, :weight, :cargo_space, :seats, :image
    )
  end
end 