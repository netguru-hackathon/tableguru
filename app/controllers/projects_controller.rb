class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :show, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def show
  end

  def create
    @project = Project.new(project_params)
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

  private
  def set_project
    @project = Project.find(params[:project_id])
  end

  def project_params
    params.require(:project).permit(:title)
  end
end
