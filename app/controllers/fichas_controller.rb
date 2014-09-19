class FichasController < ApplicationController
  before_action :set_ficha, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /fichas
  # GET /fichas.json
  def index
    @fichas = @centro.fichas.all
  end

  # GET /fichas/1
  # GET /fichas/1.json
  def show
  end

  # GET /fichas/new
  def new
    @ficha = Ficha.new
  end

  # GET /fichas/1/edit
  def edit
  end

  # POST /fichas
  # POST /fichas.json
  def create
    @ficha = Ficha.new(ficha_params)
    @ficha.centro_id = @centro.id 
    respond_to do |format|
      if @ficha.save
        format.html { redirect_to centro_fichas_path(@centro), notice: 'Ficha creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @ficha }
      else
        format.html { render :new }
        format.json { render json: @ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fichas/1
  # PATCH/PUT /fichas/1.json
  def update
    respond_to do |format|
      if @ficha.update(ficha_params)
        format.html { redirect_to centro_fichas_path(@centro), notice: 'Ficha actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @ficha }
      else
        format.html { render :edit }
        format.json { render json: @ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fichas/1
  # DELETE /fichas/1.json
  def destroy
    @ficha.destroy
    respond_to do |format|
      format.html { redirect_to centro_fichas_url(@centro), notice: 'Ficha eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha
      @centro = Centro.find(params[:centro_id])
      @ficha = Ficha.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_params
      params.require(:ficha).permit(:programa, :ficha, :centro_id)
    end
end
