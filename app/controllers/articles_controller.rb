class ArticlesController < ApplicationController
  def index
    @articles = Article.where(published: true).order(created_at: :desc)
    render :index
  end

  def show
    @article = Article.find_by!(stub: params[:stub])
    render :show
  end
end
