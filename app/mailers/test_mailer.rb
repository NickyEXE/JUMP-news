class TestMailer < ApplicationMailer
  def ping(to)
    mail(to:, subject: "Mailgun works!", body: "We did it, Reddit.")
  end
end