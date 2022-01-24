class ProblemaVoosController < ApplicationController
  before_action :set_problema_voo, only: %i[ show edit update destroy ]

  # GET /problema_voos or /problema_voos.json
  def index
    @problema_voos = ProblemaVoo.all
  end

  # GET /problema_voos/1 or /problema_voos/1.json
  def show
  end

  # GET /problema_voos/new
  def new
    @problema_voo = ProblemaVoo.new
  end

  # GET /problema_voos/1/edit
  def edit
  end

  # POST /problema_voos or /problema_voos.json
  def create
    @problema_voo = ProblemaVoo.new(problema_voo_params)

    respond_to do |format|
      if @problema_voo.save
        format.html { redirect_to problema_voo_url(@problema_voo), notice: "Problema voo was successfully created." }
        format.json { render :show, status: :created, location: @problema_voo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @problema_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problema_voos/1 or /problema_voos/1.json
  def update
    respond_to do |format|
      if @problema_voo.update(problema_voo_params)
        format.html { redirect_to problema_voo_url(@problema_voo), notice: "Problema voo was successfully updated." }
        format.json { render :show, status: :ok, location: @problema_voo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @problema_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problema_voos/1 or /problema_voos/1.json
  def destroy
    @problema_voo.destroy

    respond_to do |format|
      format.html { redirect_to problema_voos_url, notice: "Problema voo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problema_voo
      @problema_voo = ProblemaVoo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def problema_voo_params
      params.require(:problema_voo).permit(:situacao, :detalhe, :usuario, :endereço, :provas, :advogado)
    end
end
