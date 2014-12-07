class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @projects = user_signed_in? ? current_user.projects : Project.all
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    respond_with(@project)
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    @project.save
    respond_with(@project)
  end

  def update
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    @project.destroy
    respond_with(@project)
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:code, :title, :series, :isbn, :copyright, :number, :author, :level,
                                      :imprint, :edition, :acronym, :product_type, :imprint_id, :budget,
                                      :image_assets, :media_assets, :text_assets, :start, :revised_start,
                                      :close, :revised_close, :printer, :revised_printer, :color, :print_run,
                                      :trim_size, :price, :free_text, :user_id)
    end
end
