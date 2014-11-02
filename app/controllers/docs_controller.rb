class DocsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show]

  def create
    @doc = current_user.docs.build(doc_params)
    if @doc.save
      flash[:success] = "Document created!"
      redirect_to user_path(current_user)
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def show
    @doc = current_user.docs.find(params[:id])
  end

  private

    def doc_params
      params.require(:doc).permit(:title, :content)
    end
end