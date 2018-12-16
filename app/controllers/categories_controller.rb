class CategoriesController < ApplicationController
  include Pagy::Backend

  def show
    @category = Category.find(params[:id])
    @pagy, @restaurants = pagy(@category.restaurants, items: 10)
  end
end
