class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :destroy, :update]

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def show
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params[:restaurant][:category] = params[:restaurant][:category].downcase
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
