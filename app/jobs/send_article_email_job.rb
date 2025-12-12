class SendArticleEmailJob < ApplicationJob
  queue_as :default

  def perform(article_id, recipient_email)
    article = Article.find(article_id)
    ArticleMailer.new_article_published(article, recipient_email).deliver_now
  end
end
