class FoodItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:search]
      @food_items = FoodItem.tagged_with(params[:search].gsub(' ', ','), parse: true, any: true)
    else
      @food_items = FoodItem.all
    end
  end
end
