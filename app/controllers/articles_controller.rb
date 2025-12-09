class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.find_by!(stub: params[:stub])
    render :show
  end
end
