class MotherNamesController < ApplicationController
  before_action :set_mother_name, only: [:show, :edit, :update, :destroy]

  # GET /mother_names
  # GET /mother_names.json
  def index
    @mother_names = MotherName.all
  end

  # GET /mother_names/1
  # GET /mother_names/1.json
  def show
  end

  # GET /mother_names/new
  def new
    @mother_name = MotherName.new
  end

  # GET /mother_names/1/edit
  def edit
  end

  # POST /mother_names
  # POST /mother_names.json
  def create
    @mother_name = MotherName.new(mother_name_params)

    respond_to do |format|
      if @mother_name.save
        format.html { redirect_to @mother_name, notice: 'Mother name was successfully created.' }
        format.json { render :show, status: :created, location: @mother_name }
      else
        format.html { render :new }
        format.json { render json: @mother_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mother_names/1
  # PATCH/PUT /mother_names/1.json
  def update
    respond_to do |format|
      if @mother_name.update(mother_name_params)
        format.html { redirect_to @mother_name, notice: 'Mother name was successfully updated.' }
        format.json { render :show, status: :ok, location: @mother_name }
      else
        format.html { render :edit }
        format.json { render json: @mother_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mother_names/1
  # DELETE /mother_names/1.json
  def destroy
    @mother_name.destroy
    respond_to do |format|
      format.html { redirect_to mother_names_url, notice: 'Mother name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mother_name
      @mother_name = MotherName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mother_name_params
      params.require(:mother_name).permit(:mothername)
    end
end
