class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]
  before_action :authorize_only, :except => [:index, :show] 
  

  include Pagy::Backend

  def index
    @categories = Category.all
    @pagy, @restaurants = pagy(Restaurant.all, items: 20)
  end

  def show
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      flash[:notice] = "restaurant was successfully updated"
      redirect_to restaurant_path(@restaurant)
    else
      flash.now[:alert] = "restaurant was failed to update"
      render :edit
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :tel, :address, :description, :category_id, menu_uploads: [])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id]) 
  end

  def authorize_only
    unless current_user.admin? || current_user.vip?
      redirect_to restaurant_path(@restaurant), :alert => "Access denied."
    end
  end

end
