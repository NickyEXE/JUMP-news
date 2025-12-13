class ArticlesController < ApplicationController
  def index
    @articles = Article.where(published: true).order(created_at: :desc)
    render :print_edition
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params.merge(published: false, fake_created_at: "Just Now"))
    if @article.save
      redirect_to admin_articles_path, notice: "Article created successfully!", status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to admin_articles_path, notice: "Article updated successfully!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
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
    puts "Publishing article with ID #{params[:id]}"
    @article = Article.find(params[:id])
    @article.update(published: true)
    redirect_to admin_articles_path, notice: "Article published and emails sent!", status: :see_other
  end

  def show
    @article = Article.find_by!(stub: params[:stub])
    render :show
  end

  private

  def article_params
    params.require(:article).permit(:blurb, :byline, :content, :stub, :title, :thumbnail)
  end
end
