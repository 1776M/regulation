class SectionsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show, :index]

  def create
    @document = Document.find(params[:document_id])
    @section = @document.sections.build(section_params)
    if @section.save
      flash[:success] = "Section created!"
      redirect_to user_path(current_user)
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def index
  end

  def show
    @section = Section.find(params[:id])
  end

  private

    def section_params
      params.require(:section).permit(:content)
    end
end