class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render :homepage
  end
  def homepage
    @articles = Article.where(published: true).order(created_at: :desc)
    render :homepage
  end

  def show
    @article = Article.find_by!(stub: params[:stub])
    render :show
  end
end
