class IntrudersController < ApplicationController
  before_action :set_intruder, only: [:show, :edit, :update, :destroy]

  # GET /intruderes
  # GET /intruderes.json
  def index
    @models = Intruder.all
    @headers = @models[0].attributes.keys unless @models[0].nil?
    respond_to do |format|
      format.html {render :template => '_shared/common_index'}
      format.json {render @models}

    end
  end

  # GET /intruderes/1
  # GET /intruderes/1.json
  def show
    @model = Intruder.find(params[:id]) # ... or whatever here
    respond_to do |format|
      format.html {render :template => '_shared/common_show'}
      format.json { render :show, location: @model}
    end

  end

  # GET /intruders/new
  def new
    @intruder = Intruder.new
  end

  # GET /intruders/1/edit
  def edit
    @model = Intruder.find(params[:id]) # ... or whatever here
    render :template => '_shared/common_edit_form'
  end

  # POST /intruders
  # POST /intruders.json
  def create
    @intruder = Intruder.new(intruder_params)

    respond_to do |format|
      if @intruder.save
        format.html { redirect_to @intruder, notice: 'Intruder was successfully created.' }
        format.json { render :show, status: :created, location: @intruder }
      else
        format.html { render :new }
        format.json { render json: @intruder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intruders/1
  # PATCH/PUT /intruders/1.json
  def update
    respond_to do |format|
      if @intruder.update(intruder_params)
        format.html { redirect_to @intruder, notice: 'Intruder was successfully updated.' }
        format.json { render :show, status: :ok, location: @intruder }
      else
        format.html { render :edit }
        format.json { render json: @intruder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intruders/1
  # DELETE /intruders/1.json
  def destroy
    @intruder.destroy
    respond_to do |format|
      format.html { redirect_to intruders_url, notice: 'Intruder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intruder
      @intruder = Intruder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intruder_params
      params.require(:intruder).permit(:name, :description, :img_url, :wants, :fears)
    end
end
