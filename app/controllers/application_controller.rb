class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def reports
    @reports = Report.all
  end
end
