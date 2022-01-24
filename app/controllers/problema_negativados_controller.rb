class ProblemaNegativadosController < ApplicationController
  before_action :set_problema_negativado, only: %i[ show edit update destroy ]

  # GET /problema_negativados or /problema_negativados.json
  def index
    @problema_negativados = ProblemaNegativado.all
  end

  # GET /problema_negativados/1 or /problema_negativados/1.json
  def show
  end

  # GET /problema_negativados/new
  def new
    @problema_negativado = ProblemaNegativado.new
  end

  # GET /problema_negativados/1/edit
  def edit
  end

  # POST /problema_negativados or /problema_negativados.json
  def create
    @problema_negativado = ProblemaNegativado.new(problema_negativado_params)

    respond_to do |format|
      if @problema_negativado.save
        format.html { redirect_to problema_negativado_url(@problema_negativado), notice: "Problema negativado was successfully created." }
        format.json { render :show, status: :created, location: @problema_negativado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @problema_negativado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problema_negativados/1 or /problema_negativados/1.json
  def update
    respond_to do |format|
      if @problema_negativado.update(problema_negativado_params)
        format.html { redirect_to problema_negativado_url(@problema_negativado), notice: "Problema negativado was successfully updated." }
        format.json { render :show, status: :ok, location: @problema_negativado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @problema_negativado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problema_negativados/1 or /problema_negativados/1.json
  def destroy
    @problema_negativado.destroy

    respond_to do |format|
      format.html { redirect_to problema_negativados_url, notice: "Problema negativado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problema_negativado
      @problema_negativado = ProblemaNegativado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def problema_negativado_params
      params.require(:problema_negativado).permit(:divida, :categoria, :usuario, :endereco, :provas, :advogado)
    end
end
