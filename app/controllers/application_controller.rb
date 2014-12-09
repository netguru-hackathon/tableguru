class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def current_project
    Project.find(session[:project_id])
  end

  def after_sign_in_path_for(resource)
    projects_path
  end

  def default_serializer_options
    {root: false}
  end
end
