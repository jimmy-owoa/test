class Reporter::ApplicationController < ApplicationController
  before_action :authenticate_reporter!
  layout 'reporter'

end
