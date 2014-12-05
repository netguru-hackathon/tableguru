class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :show, :update, :destroy]

  def index
    @user = current_user
    @projects = @user.projects
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def show
    render text: "", status: 400 unless params[:id]
    session[:project_id] = params[:id]
  end

  def create
    @project = Project.new(project_params.merge(user: current_user))
    if @project.save
      redirect_to project_path(@project), notice: "Project created :)"
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: "Project updated :)"
    else
      render :edit
    end
  end

  def destroy
    if @project.destroy
      redirect_to projects_path, notice: "Project deleted"
    else
      redirect_to projects_path, notice: "Couldn't delete the project."
    end
  end

  def optimize
    optimizer = Optimizer.new(self)
    optimizer.optimize!
    render json: optimizer
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title)
  end
end
