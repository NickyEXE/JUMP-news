# Preview all emails at http://localhost:3000/rails/mailers/article_mailer
class ArticleMailerPreview < ActionMailer::Preview
  def new_article_published
    article = Article.where(published: true).last || Article.last
    ArticleMailer.new_article_published(article, "test@example.com")
  end
end
