class ArticleMailer < ApplicationMailer
  default from: 'jump-news@mg.nickydover.com'

  def new_article_published(article, recipient_email)
    @article = article
    @blurb = article.blurb || article.content.truncate(200)
    
    mail(
      to: recipient_email,
      subject: "JUMP News: #{article.title}"
    )
  end
end
