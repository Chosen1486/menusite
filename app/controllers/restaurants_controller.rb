class RestaurantsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @restaurants = pagy(Restaurant.all, items: 20)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
