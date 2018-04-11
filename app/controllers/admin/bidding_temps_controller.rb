class Admin::BiddingTempsController < Admin::ApplicationController
  before_action :set_bidding_temp, only: [:show, :edit, :update, :destroy]

  # GET /bidding_temps
  # GET /bidding_temps.json
  def index
    @bidding_temps = BiddingTemp.paginate(:page => params[:page], :per_page => 25)
    @found = BiddingTemp.search(params['filter'], fields: [:title, :country, :sector, :bidding_company])
    if @found.length == 0
      @found = BiddingTemp.paginate(:page => params[:page], :per_page => 25)
    end

  end

  # GET /bidding_temps/1
  # GET /bidding_temps/1.json
  def show
  end

  # GET /bidding_temps/new
  def new
    @bidding_temp = BiddingTemp.new
  end

  # GET /bidding_temps/1/edit
  def edit
  end

  # POST /bidding_temps
  # POST /bidding_temps.json
  def create
    @bidding_temp = BiddingTemp.new(bidding_temp_params)

    respond_to do |format|
      if @bidding_temp.save
        format.html { redirect_to [:admin, @bidding_temp], notice: 'Bidding temp was successfully created.' }
        format.json { render :show, status: :created, location: @bidding_temp }
      else
        format.html { render :new }
        format.json { render json: @bidding_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bidding_temps/1
  # PATCH/PUT /bidding_temps/1.json
  def update
    respond_to do |format|
      if @bidding_temp.update(bidding_temp_params)
        format.html { redirect_to [:admin, @bidding_temp], notice: 'Bidding temp was successfully updated.' }
        format.json { render :show, status: :ok, location: @bidding_temp }
      else
        format.html { render :edit }
        format.json { render json: @bidding_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bidding_temps/1
  # DELETE /bidding_temps/1.json
  def destroy
    @bidding_temp.destroy
    respond_to do |format|
      format.html { redirect_to admin_bidding_temps_url, notice: 'Bidding temp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bidding_temp
      @bidding_temp = BiddingTemp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bidding_temp_params
      params.require(:bidding_temp).permit(:title, :country, :sector, :items_involved, :location, :bidding_company, :description, :requirements, :bases, :contact)
    end
end
