class User::ProjectsController < User::ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @found_sector =  Project.search(params['sector_name'], fields: [:sector_name])
    if @found_sector.length == 0
      @found_sector = Project.all
    end
    # query = params[:query].presence || "*"
    # conditions = {}
    # conditions[:sector_name] = params[:sector_name] if params[:sector_name].present?
    # conditions[:country] = params[:country] if params[:country].present?
    # @found_sector = Project.search query, where: conditions

    @found_sector = Project.search(params[:sector_name], fields: [:sector_name]).results &
                    Project.search(params[:country], fields: [:country]).results &
                    Project.search(params[:region], fields: [:region]).results
    if @found_sector.length == 0
      @found_sector = Project.all
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    respond_to do |format|
     format.html
     format.pdf do
     render pdf: "Your_filename",
     template: "user/projects/show.html.erb",
     layout: 'pdf.html'

   end
  end

  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to [:user, @project], notice: 'Project temp was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to [:user, @project], notice: 'Project temp was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to user_projects_url, notice: 'Project temp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :detail_title, :country, :region, :sector_name, :types, :investment, :production, :client, :owner, :location, :description, :current_phase, :responsible, :contract_type, :latest_information, :contact_name, :contact_company, :contact_job, :contact_phone, :contact_address, :full_contact, :adjudications, :history, :main_works, :main_teams, :main_supplies, :main_services)
    end
end
