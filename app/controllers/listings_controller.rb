class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /listings
  # GET /listings.json
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

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listings = Listing.all
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save!
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:start_time, :end_time, :price, :motorhome_id)
    end
end
