class AssignedProjectsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @worker = Worker.find(params[:worker_id])
  end
end
