class RestaurantsController < ApplicationController
  include Pagy::Backend
  
  def index
    @pagy, @restaurants = pagy(Restaurant.all, items: 20)
  end
end
