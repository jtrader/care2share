class CrepliesController < ApplicationController
  before_action :set_creply, only: [:show, :edit, :update, :destroy]

  # GET /creplies
  # GET /creplies.json
  def index
    @creplies = Creply.all
  end

  # GET /creplies/1
  # GET /creplies/1.json
  def show
  end

  # GET /creplies/new
  def new
    @creply = Creply.new
  end

  # GET /creplies/1/edit
  def edit
  end

  # POST /creplies
  # POST /creplies.json
  def create
    @creply = Creply.new(creply_params)

    respond_to do |format|
      if @creply.save
        format.html { redirect_to Profile.find(Comment.find(@creply[:comment_id])[:recipient_id]), notice: 'Creply was successfully created.' }
        format.json { render :show, status: :created, location: @creply }
      else
        format.html { render :new }
        format.json { render json: @creply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creplies/1
  # PATCH/PUT /creplies/1.json
  def update
    respond_to do |format|
      if @creply.update(creply_params)
        format.html { redirect_to @creply, notice: 'Creply was successfully updated.' }
        format.json { render :show, status: :ok, location: @creply }
      else
        format.html { render :edit }
        format.json { render json: @creply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creplies/1
  # DELETE /creplies/1.json
  def destroy
    @creply.destroy
    respond_to do |format|
      format.html { redirect_to creplies_url, notice: 'Creply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creply
      @creply = Creply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creply_params
      params.require(:creply).permit(:text, :writer_id, :comment_id)
    end
end
