class MotorhomesController < ApplicationController
  before_action :set_motorhome, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /motorhomes
  # GET /motorhomes.json
  def index
    @motorhomes = Motorhome.all
  end

  # GET /motorhomes/1
  # GET /motorhomes/1.json
  def show
  end

  # GET /motorhomes/new
  def new
    @motorhome = Motorhome.new
  end

  # GET /motorhomes/1/edit
  def edit
  end

  # POST /motorhomes
  # POST /motorhomes.json
  def create
    @motorhome = Motorhome.new(motorhome_params)

    respond_to do |format|
      if @motorhome.save
        format.html { redirect_to @motorhome, notice: 'Motorhome was successfully created.' }
        format.json { render :show, status: :created, location: @motorhome }
      else
        format.html { render :new }
        format.json { render json: @motorhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motorhomes/1
  # PATCH/PUT /motorhomes/1.json
  def update
    respond_to do |format|
      if @motorhome.update(motorhome_params)
        format.html { redirect_to @motorhome, notice: 'Motorhome was successfully updated.' }
        format.json { render :show, status: :ok, location: @motorhome }
      else
        format.html { render :edit }
        format.json { render json: @motorhome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motorhomes/1
  # DELETE /motorhomes/1.json
  def destroy
    @motorhome.destroy
    respond_to do |format|
      format.html { redirect_to motorhomes_url, notice: 'Motorhome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motorhome
      @motorhome = Motorhome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motorhome_params
      params.require(:motorhome).permit(:make, :model, :uploaded_image, :length, :beds, :year, :user_id)
    end
end
