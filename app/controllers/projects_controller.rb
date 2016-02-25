class ProjectsController < ApplicationController
  skip_before_action :require_login, only: [:index]
  
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    # left intentionally blank
  end

  def update
    # left intentionally blank
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

end

private
def project_params
  params.require(:project).permit(:title, :description, :end_date, :goal)
end
