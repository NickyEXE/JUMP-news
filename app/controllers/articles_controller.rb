class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render :homepage
  end

  def admin 
    @articles = Article.all.order(created_at: :desc)
    render :admin
  end

  def homepage
    @articles = Article.where(published: true).order(created_at: :desc)
    render :homepage
  end

  def publish
    @article = Article.find(params[:id])
    @article.update(published: true)
    redirect_to admin_articles_path, notice: "Article published."
  end

  def show
    @article = Article.find_by!(stub: params[:stub])
    render :show
  end
end
