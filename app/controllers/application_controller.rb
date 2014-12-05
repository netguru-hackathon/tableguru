class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def current_project
    Project.find(session[:project_id])
  end
end
