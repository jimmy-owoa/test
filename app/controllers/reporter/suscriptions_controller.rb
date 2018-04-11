class Reporter::SuscriptionsController < Reporter::ApplicationController
  before_action :set_reporter_suscription, only: [:show, :edit, :update, :destroy]
  

  # GET /reporter/suscriptions
  # GET /reporter/suscriptions.json
  def index
    @reporter_suscriptions = Reporter::Suscription.all
  end

  # GET /reporter/suscriptions/1
  # GET /reporter/suscriptions/1.json
  def show
  end

  # GET /reporter/suscriptions/new
  def new
    @reporter_suscription = Reporter::Suscription.new
  end

  # GET /reporter/suscriptions/1/edit
  def edit
  end

  # POST /reporter/suscriptions
  # POST /reporter/suscriptions.json
  def create
    @reporter_suscription = Reporter::Suscription.new(reporter_suscription_params)

    respond_to do |format|
      if @reporter_suscription.save
        format.html { redirect_to @reporter_suscription, notice: 'Suscription was successfully created.' }
        format.json { render :show, status: :created, location: @reporter_suscription }
      else
        format.html { render :new }
        format.json { render json: @reporter_suscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporter/suscriptions/1
  # PATCH/PUT /reporter/suscriptions/1.json
  def update
    respond_to do |format|
      if @reporter_suscription.update(reporter_suscription_params)
        format.html { redirect_to @reporter_suscription, notice: 'Suscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @reporter_suscription }
      else
        format.html { render :edit }
        format.json { render json: @reporter_suscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporter/suscriptions/1
  # DELETE /reporter/suscriptions/1.json
  def destroy
    @reporter_suscription.destroy
    respond_to do |format|
      format.html { redirect_to reporter_suscriptions_url, notice: 'Suscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporter_suscription
      @reporter_suscription = Reporter::Suscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reporter_suscription_params
      params.fetch(:reporter_suscription, {})
    end
end
