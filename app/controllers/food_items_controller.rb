class FoodItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @food_items = FoodItem.all
  end
end
