class DocumentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show, :index]

  def create
    @document = current_user.documents.build(document_params)
    if @document.save
      flash[:success] = "Document created!"
      redirect_to user_path(current_user)
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def index
    @document = Document.new if logged_in?
  end 

  def show
    @document = current_user.documents.find(params[:id])
    @doc = Doc.new if logged_in?
    @section = Section.new if logged_in?
  end

  private

    def document_params
      params.require(:document).permit(:title, :content)
    end
end
