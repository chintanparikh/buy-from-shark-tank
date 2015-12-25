class ListingsController < ApplicationController
  def index

    set_meta_tags site: 'Buy From Shark Tank', title: 'All Products from Shark Tank'
    set_meta_tags description: "Browse and shop for any product from any episode on Shark Tank."
    set_meta_tags keywords: %w[shark tank mark cuban lori grenier product products gift gifts idea ideas daymond john]


    page = params[:page]
    search_term = params[:search_term]
    season = params[:season]
    episode = params[:episode]

    @listings = Listing.all
  
    if (season and season != 'Season')
      @listings = @listings.where(season: season)
    end

    if (episode and episode != 'Episode')
      @listings = @listings.where(episode: episode)
    end

    if (search_term and search_term.present? and !search_term.blank?)
      @listings = @listings.where("name ILIKE ?", "%#{search_term}%")
    end


    @listings = @listings.order("CREATED_AT DESC").page(params[:page])
  end
end
