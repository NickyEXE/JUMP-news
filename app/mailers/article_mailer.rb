class ArticleMailer < ApplicationMailer

  def new_article_published(article, recipient_email)
    puts "writing to #{recipient_email} about article #{article.id}"
    @article = article
    @blurb = article.blurb || article.content.truncate(200)
    
    mail(
      to: recipient_email,
      subject: "JUMP News: #{article.title}"
    )
  end
end
