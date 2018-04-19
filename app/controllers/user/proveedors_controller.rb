class User::ProveedorsController < User::ApplicationController
  before_action :set_proveedor, only: [:show, :edit, :update, :destroy]

  # GET /proveedors
  # GET /proveedors.json
  def index
    @proveedors = Proveedor.all
  end

  # GET /proveedors/1
  # GET /proveedors/1.json
  def show
    respond_to do |format|
     format.html
     format.pdf do
     render pdf: "Proveedor",
     template: "user/proveedors/show.html.erb",
     layout: 'pdf_proveedores.html'
     end
    end
  end

  # GET /proveedors/new
  def new
    @proveedor = Proveedor.new
  end

  # GET /proveedors/1/edit
  def edit
  end

  # POST /proveedors
  # POST /proveedors.json
  def create
    @proveedor = Proveedor.new(proveedor_params)

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to [:user, @proveedor], notice: 'Proveedor was successfully created.' }
        format.json { render :show, status: :created, location: @proveedor }
      else
        format.html { render :new }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedors/1
  # PATCH/PUT /proveedors/1.json
  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html { redirect_to [:user, @proveedor], notice: 'Proveedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @proveedor }
      else
        format.html { render :edit }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedors/1
  # DELETE /proveedors/1.json
  def destroy
    @proveedor.destroy
    respond_to do |format|
      format.html { redirect_to user_proveedors_url, notice: 'Proveedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_params
      params.require(:proveedor).permit(:rut, :razon_social, :estado_general, :observaciones, :observaciones_agenda, :situacion_competencias_basicas, :competencias_basicas_categoria, :competencias_basicas_porcentaje, :competencias_basicas_fecha_vigencia, :competencias_basicas_infraestructura, :comptencias_basicas_recursos_humanos, :competencias_basicas_calidad, :competencias_basicas_medio_ambiente, :competencias_basicas_seguridad, :competencias_basicas_conectividad_y_automatizacion, :competencias_basicas_comunidad, :financiero_anio, :financiero_tamano, :financiero_patrimonio, :financiero_capital_de_trabajo, :financiero_total_activos, :financiero_deuda, :financiero_capital_de_trabajo_relativo,
         :financiero_liquidez, :financiero_razon_de_endeudamiento, :financiero_leverage, :financiero_rentabilidad_activos, :financiero_rentabilidad_activos, :financiero_rentabilidad_patrimonio, :financiero_rentabilidad_ventas, :financiero_indice_de_quiebra, :financiero_ingreso_de_explotacion, :financiero_razon_acida, :antecedente_comercial_cantidad_documentos_boletin, :antecedente_comercial_monto_total_boletin, :antecedente_comercial_cantidad_documentos_morosidad, :antecedente_comercial_monto_total_morosidad, :antecedente_comercial_cantidad_documentos_protestos, :antecedente_comercial_monto_total_protesto, :tributario_fecha_de_actualizacion, :tributario_facturacion_electronica, :tributario_observacion_alerta, :tributario_observacion_irregularidad, :mutualidad_fecha, :mutualidad_indice_gravedad, :mutualidad_indice_de_frecuencia, :contacto_nombre, :contacto_telefono,
         :contacto_email, :instalaciones_ciudad_casa_matriz, :instalaciones_direccion_casa_matriz, :tipo_de_certificacion_iso, :pdf)
    end
end
