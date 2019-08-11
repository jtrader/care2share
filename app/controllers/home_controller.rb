class HomeController < ApplicationController

    def index
        if user_signed_in?
            @user_motorhomes = Motorhome.where(user: current_user)
        end

        @listing_date_from = Listing.all
        @listing_date_to = Listing.all
        @listing_max_price = Listing.all
        @listing_min_beds = Listing.all
        @listing_search = Listing.all
        if params[:search] != nil && params[:search] != ''
          @listing_search = Listing.where('listings.address LIKE ?', "%#{params[:search]}%")
        end
        if params[:start_time] != nil && params[:start_time] != ''
          @listing_date_from = Listing.where("start_time <= '#{Date.parse(params[:start_time])}'")
        end
        if params[:end_time] != nil && params[:end_time] != ''
          @listing_date_to = Listing.where("end_time >= '#{Date.parse(params[:end_time])}'")
        end
        if params[:max_price] != nil && params[:max_price] != ''
          @listing_max_price = Listing.where("price < '#{params[:max_price]}'")
        end
        if params[:min_beds] != nil && params[:min_beds] != ''
          @listing_min_beds = Listing.joins(:motorhome).where("motorhomes.beds >= '#{params[:min_beds]}'")
          @listing_date_from = Listing.where("start_time <= '#{Date.parse(params[:start_time])}'")
        end
        if params[:end_time] != nil && params[:end_time] != ''
          @listing_date_to = Listing.where("end_time >= '#{Date.parse(params[:end_time])}'")
        end
        if params[:max_price] != nil && params[:max_price] != ''
          @listing_max_price = Listing.where("price < '#{params[:max_price]}'")
        end
        if params[:min_beds] != nil && params[:min_beds] != ''
          @listing_min_beds = Listing.joins(:motorhome).where("motorhomes.beds >= '#{params[:min_beds]}'")
        end
        @listings = @listing_date_from & @listing_date_to & @listing_max_price & @listing_min_beds & @listing_search
    end
end
