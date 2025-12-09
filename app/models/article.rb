class Article < ApplicationRecord

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
end
