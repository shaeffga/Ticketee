class ProjectsController < ApplicationController
  before_filter :find_project, except: [:index, :new, :create]

  def index
    @projects = Project.all.sort_by {|p| p.name}
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path, notice: "Pledge Project has been created. GRAB A BEER!"
    else
      flash[:alert] = "Project has not been added."
      render :new
    end
  end

  def show; end

  def update; end

  def delete; end

  def find_project
    @project = Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The project you were looking for could not be found."
      redirect_to projects_path
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
