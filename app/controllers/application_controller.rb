class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def current_project
    Project.find(session[:project_id])
  end

  def default_serializer_options
    {root: false}
  end
end
