class User::HomeController < User::ApplicationController

  def index
    @projects = Project.all

    # Habilitar esto cuando se cambie al nuevo modelo bd
    # mineria = 0
    # energia = 0
    # infraestructura = 0
    # forestal = 0
    # todos = Project.all.count
    # Project.all.each do |project|
    #   if project.sector_id == 1
    #     mineria = mineria + 1
    #   end
    #   if project.sector_id == 2
    #     forestal = forestal + 1
    #   end
    #   if project.sector_id == 3
    #     infraestructura = infraestructura + 1
    #   end
    #   if project.sector_id == 4
    #     energia = energia + 1
    #   end
    # end
    #
    # gon.mineria = (100 * mineria)/todos
    # gon.energia = (100 * energia)/todos
    # gon.forestal = (100 * forestal)/todos
    # gon.infraestructura = (100 * infraestructura)/todos

    mineria = 0
    energia = 0
    infraestructura = 0
    forestal = 0
    industrial = 0
    sanitario = 0
    todos = ProjectTemp.all.count
    ProjectTemp.all.each do |project|
      if project.sector_name == "Minería"
        mineria = mineria + 1
      end
      if project.sector_name == "Forestal"
        forestal = forestal + 1
      end
      if project.sector_name == "Infraestructura"
        infraestructura = infraestructura + 1
      end
      if project.sector_name == "Energía"
        energia = energia + 1
      end
      if project.sector_name == "Industrial"
        industrial = industrial + 1
      end
      if project.sector_name == "Sanitario"
        sanitario = sanitario + 1
      end
    end

    gon.mineria = (100 * mineria)/todos
    gon.energia = (100 * energia)/todos
    gon.forestal = (100 * forestal)/todos
    gon.infraestructura = (100 * infraestructura)/todos
    gon.industrial = (100 * industrial)/todos
    gon.sanitario = (100 * sanitario)/todos

  end


end
