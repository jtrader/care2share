class HomeController < ApplicationController

    def index 
        @listing_date_from = Listing.all
        @listing_date_to = Listing.all
        @listing_max_price = Listing.all
        @listing_min_beds = Listing.all
        if params[:date_from] != nil && params[:date_from] != ''
        @listing_date_from = Listing.where("start_time <= '#{Date.parse(params[:date_from])}'")
        end
        if params[:date_to] != nil && params[:date_to] != ''
        @listing_date_to = Listing.where("end_time >= '#{Date.parse(params[:date_to])}'")
        end
        if params[:max_price] != nil && params[:max_price] != ''
        @listing_max_price = Listing.where("price < '#{params[:max_price]}'")
        end
        if params[:min_beds] != nil && params[:min_beds] != ''
        @listing_min_beds = Listing.joins(:motorhome).where("motorhomes.beds >= '#{params[:min_beds]}'")
        end
        @listings = @listing_date_from & @listing_date_to & @listing_max_price & @listing_min_beds
    end

end