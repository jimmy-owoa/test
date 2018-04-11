class User::ApplicationController < ApplicationController
  before_action :authenticate_user!
  
  layout 'user'

  def index

  end


end
