class BirthPlacesController < ApplicationController
  before_action :set_birth_place, only: [:show, :edit, :update, :destroy]

  # GET /birth_places
  # GET /birth_places.json
  def index
    @birth_places = BirthPlace.all
  end

  # GET /birth_places/1
  # GET /birth_places/1.json
  def show
  end

  # GET /birth_places/new
  def new
    @birth_place = BirthPlace.new
  end

  # GET /birth_places/1/edit
  def edit
  end

  # POST /birth_places
  # POST /birth_places.json
  def create
    @birth_place = BirthPlace.new(birth_place_params)

    respond_to do |format|
      if @birth_place.save
        format.html { redirect_to @birth_place, notice: 'Birth place was successfully created.' }
        format.json { render :show, status: :created, location: @birth_place }
      else
        format.html { render :new }
        format.json { render json: @birth_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /birth_places/1
  # PATCH/PUT /birth_places/1.json
  def update
    respond_to do |format|
      if @birth_place.update(birth_place_params)
        format.html { redirect_to @birth_place, notice: 'Birth place was successfully updated.' }
        format.json { render :show, status: :ok, location: @birth_place }
      else
        format.html { render :edit }
        format.json { render json: @birth_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birth_places/1
  # DELETE /birth_places/1.json
  def destroy
    @birth_place.destroy
    respond_to do |format|
      format.html { redirect_to birth_places_url, notice: 'Birth place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birth_place
      @birth_place = BirthPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def birth_place_params
      params.require(:birth_place).permit(:birth)
    end
end
