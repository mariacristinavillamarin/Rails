class RegistroDeResiduosController < ApplicationController
  before_action :set_registro_de_residuo, only: [:show, :edit, :update, :destroy]

  # GET /registro_de_residuos
  # GET /registro_de_residuos.json
  def index
    @registro_de_residuos = RegistroDeResiduo.all
  end

  # GET /registro_de_residuos/1
  # GET /registro_de_residuos/1.json
  def show
  end

  # GET /registro_de_residuos/new
  def new
    @registro_de_residuo = RegistroDeResiduo.new
  end

  # GET /registro_de_residuos/1/edit
  def edit
  end

  # POST /registro_de_residuos
  # POST /registro_de_residuos.json
  def create
    @registro_de_residuo = RegistroDeResiduo.new(registro_de_residuo_params)

    respond_to do |format|
      if @registro_de_residuo.save
        format.html { redirect_to @registro_de_residuo, notice: 'Registro de residuo was successfully created.' }
        format.json { render :show, status: :created, location: @registro_de_residuo }
      else
        format.html { render :new }
        format.json { render json: @registro_de_residuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_de_residuos/1
  # PATCH/PUT /registro_de_residuos/1.json
  def update
    respond_to do |format|
      if @registro_de_residuo.update(registro_de_residuo_params)
        format.html { redirect_to @registro_de_residuo, notice: 'Registro de residuo was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_de_residuo }
      else
        format.html { render :edit }
        format.json { render json: @registro_de_residuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_de_residuos/1
  # DELETE /registro_de_residuos/1.json
  def destroy
    @registro_de_residuo.destroy
    respond_to do |format|
      format.html { redirect_to registro_de_residuos_url, notice: 'Registro de residuo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_de_residuo
      @registro_de_residuo = RegistroDeResiduo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_de_residuo_params
      params.require(:registro_de_residuo).permit(:fecha, :tipo, :contenedor, :telefono)
    end
end
