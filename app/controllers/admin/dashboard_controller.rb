class Admin::DashboardController < ApplicationController
  def show
    @product_count = Product.sum(:quantity)
    @category_count = Category.count
    @categories = Category.all
  end
  # STRETCH TO DO: add link to admin/products list and catergoy index pages
  # make it pretty with 3 bootstrap elements
end
