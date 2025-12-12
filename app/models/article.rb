class Article < ApplicationRecord
    after_update :send_publication_emails, if: :just_published?

    def self.mottos
    [
        "Perceptive Minds Blown Dirt Cheap", 
        "We Need a Good Lawyer, Fast!", 
        "Unionizing for More Perception", 
        "Perception Dies in Darkness",
        "Hard News for Hard Readers",
        "Hard Scoops on Big Supes",
        "Our Reporters Pound More Than Pavement",
        "Coming Soon: A Way to Pay Us???",
        "We Saved the World and All We Got Was This Zine"
    ]
    end

    def self.random_motto
        mottos.sample
    end

    private

    def just_published?
        saved_change_to_published? && published?
    end

    def send_publication_emails
        User.where(verified: true).find_each do |user|
            ArticleMailer.new_article_published(self, user.email).deliver_now
        end
    end
end
