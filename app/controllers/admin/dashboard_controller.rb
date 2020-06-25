class Admin::DashboardController < ApplicationController

  def show
    @categories = Category.order(id: :desc).all
    @products = Product.order(id: :desc).all
  end

end
