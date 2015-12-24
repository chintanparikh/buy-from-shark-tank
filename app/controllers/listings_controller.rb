class ListingsController < ApplicationController
  def index
    @listings = Listing.all.order("CREATED_AT DESC").page(params[:page])
  end
end
