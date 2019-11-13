class AssignedProjectsController < ApplicationController

  def create
    Assignment.create(project_id: params[:project_id], worker_id: params [:assigned_projects][:worker_id])
    redirect_to projects_path
  end

  def destroy
    worker = Worker.find(params[:worker_id])
    project = Project.find(params[:project_id])
    worker.projects.delete(project)
    redirect_to projects_path
  end

private
  def worker_params
    params.require(:worker).permit(:name)
  end
end
