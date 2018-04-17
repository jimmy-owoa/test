class User::ProjectTempsController < User::ApplicationController
  before_action :set_project_temp, only: [:show, :edit, :update, :destroy]

  # GET /project_temps
  # GET /project_temps.json
  def index
    @project_temps = ProjectTemp.all
    @found_sector =  ProjectTemp.search(params['sector_name'], fields: [:sector_name])
    if @found_sector.length == 0
      @found_sector = ProjectTemp.all
    end
    # query = params[:query].presence || "*"
    # conditions = {}
    # conditions[:sector_name] = params[:sector_name] if params[:sector_name].present?
    # conditions[:country] = params[:country] if params[:country].present?
    # @found_sector = ProjectTemp.search query, where: conditions

    @found_sector = ProjectTemp.search(params[:sector_name], fields: [:sector_name]).results &
                    ProjectTemp.search(params[:country], fields: [:country]).results &
                    ProjectTemp.search(params[:region], fields: [:region]).results
    if @found_sector.length == 0
      @found_sector = ProjectTemp.all
    end
  end

  # GET /project_temps/1
  # GET /project_temps/1.json
  def show
    respond_to do |format|
     format.html
     format.pdf do
     render pdf: "Your_filename",
     template: "user/project_temps/show.html.erb",
     layout: 'pdf_temp.html'

   end
  end
  end

  # GET /project_temps/new
  def new
    @project_temp = ProjectTemp.new
  end

  # GET /project_temps/1/edit
  def edit
  end

  # POST /project_temps
  # POST /project_temps.json
  def create
    @project_temp = ProjectTemp.new(project_temp_params)

    respond_to do |format|
      if @project_temp.save
        format.html { redirect_to [:user, @project_temp], notice: 'Project temp was successfully created.' }
        format.json { render :show, status: :created, location: @project_temp }
      else
        format.html { render :new }
        format.json { render json: @project_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_temps/1
  # PATCH/PUT /project_temps/1.json
  def update
    respond_to do |format|
      if @project_temp.update(project_temp_params)
        format.html { redirect_to [:user, @project_temp], notice: 'Project temp was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_temp }
      else
        format.html { render :edit }
        format.json { render json: @project_temp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_temps/1
  # DELETE /project_temps/1.json
  def destroy
    @project_temp.destroy
    respond_to do |format|
      format.html { redirect_to user_project_temps_url, notice: 'Project temp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_temp
      @project_temp = ProjectTemp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_temp_params
      params.require(:project_temp).permit(:title, :detail_title, :country, :region, :sector_name, :types, :investment, :production, :client, :owner, :location, :description, :current_phase, :responsible, :contract_type, :latest_information, :contact_name, :contact_company, :contact_job, :contact_phone, :contact_address, :full_contact, :adjudications, :history, :main_works, :main_teams, :main_supplies, :main_services)
    end
end
