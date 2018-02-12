class WitchesController < ApplicationController
  before_action :set_witch, only: [:show, :edit, :update, :destroy]

  # GET /witches
  # GET /witches.json
  def index
    @witches = Witch.all
  end

  # GET /witches/1
  # GET /witches/1.json
  def show
  end

  # GET /witches/new
  def new
    @witch = Witch.new
  end

  # GET /witches/1/edit
  def edit
  end

  # POST /witches
  # POST /witches.json
  def create
    @witch = Witch.new(witch_params)

    respond_to do |format|
      if @witch.save
        format.html { redirect_to @witch, notice: 'Witch was successfully created.' }
        format.json { render :show, status: :created, location: @witch }
      else
        format.html { render :new }
        format.json { render json: @witch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /witches/1
  # PATCH/PUT /witches/1.json
  def update
    respond_to do |format|
      if @witch.update(witch_params)
        format.html { redirect_to @witch, notice: 'Witch was successfully updated.' }
        format.json { render :show, status: :ok, location: @witch }
      else
        format.html { render :edit }
        format.json { render json: @witch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /witches/1
  # DELETE /witches/1.json
  def destroy
    @witch.destroy
    respond_to do |format|
      format.html { redirect_to witches_url, notice: 'Witch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_witch
      @witch = Witch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def witch_params
      params.require(:witch).permit(:name, :description, :img_url, :img_url, :knowledge, :cuteness, :quickness, :patience, :favorite_familar, :favorite_element)
    end
end
