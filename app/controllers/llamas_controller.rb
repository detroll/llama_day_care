class LlamasController < ApplicationController
  before_action :set_llama, only: [:show, :edit, :update, :destroy]

  # GET /llamas
  # GET /llamas.json
  def index
    @llamas = Llama.all
  end

  # GET /llamas/1
  # GET /llamas/1.json
  def show
  end

  # GET /llamas/new
  def new
    @llama = Llama.new
  end

  # GET /llamas/1/edit
  def edit
  end

  # POST /llamas
  # POST /llamas.json
  def create
    @llama = Llama.new(llama_params)

    respond_to do |format|
      if @llama.save
        format.html { redirect_to @llama, notice: 'Llama was successfully created.' }
        format.json { render :show, status: :created, location: @llama }
      else
        format.html { render :new }
        format.json { render json: @llama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /llamas/1
  # PATCH/PUT /llamas/1.json
  def update
    respond_to do |format|
      if @llama.update(llama_params)
        format.html { redirect_to @llama, notice: 'Llama was successfully updated.' }
        format.json { render :show, status: :ok, location: @llama }
      else
        format.html { render :edit }
        format.json { render json: @llama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /llamas/1
  # DELETE /llamas/1.json
  def destroy
    @llama.destroy
    respond_to do |format|
      format.html { redirect_to llamas_url, notice: 'Llama was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_llama
      @llama = Llama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def llama_params
      params.require(:llama).permit(:name, :breed, :age, :owner_id)
    end
end
