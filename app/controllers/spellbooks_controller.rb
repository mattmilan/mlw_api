class SpellbooksController < ApplicationController
  before_action :set_spellbook, only: [:show, :edit, :update, :destroy]

  # GET /spellbookes
  # GET /spellbookes.json
  def index
    @models = Spellbook.all
    @headers = @models[0].attributes.keys unless @models[0].nil?
    respond_to do |format|
      format.html {render :template => '_shared/common_index'}
      format.json {render @models}

    end
  end

  # GET /spellbookes/1
  # GET /spellbookes/1.json
  def show
    @model = Spellbook.find(params[:id]) # ... or whatever here
    respond_to do |format|
      format.html {render :template => '_shared/common_show'}
      format.json { render :show, location: @model}
    end

  end

  # GET /spellbooks/new
  def new
    @spellbook = Spellbook.new
  end

  # GET /spellbooks/1/edit
  def edit
    @model = Spellbook.find(params[:id]) # ... or whatever here
    render :template => '_shared/common_edit_form'
  end

  # POST /spellbooks
  # POST /spellbooks.json
  def create
    @spellbook = Spellbook.new(spellbook_params)

    respond_to do |format|
      if @spellbook.save
        format.html { redirect_to @spellbook, notice: 'Spellbook was successfully created.' }
        format.json { render :show, status: :created, location: @spellbook }
      else
        format.html { render :new }
        format.json { render json: @spellbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spellbooks/1
  # PATCH/PUT /spellbooks/1.json
  def update
    respond_to do |format|
      if @spellbook.update(spellbook_params)
        format.html { redirect_to @spellbook, notice: 'Spellbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @spellbook }
      else
        format.html { render :edit }
        format.json { render json: @spellbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spellbooks/1
  # DELETE /spellbooks/1.json
  def destroy
    @spellbook.destroy
    respond_to do |format|
      format.html { redirect_to spellbooks_url, notice: 'Spellbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spellbook
      @spellbook = Spellbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spellbook_params
      params.require(:spellbook).permit(:name, :description, :img_url)
    end
end
