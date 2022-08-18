class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end
    def self.most_popular_show
        self.all.order(rating: :desc).limit(1).first
    end
    def self.lowest_rating
        Show.minimum(:rating)
    end
    def self.least_popular_show
        self.all.order(:rating).limit(1).first
    end
    def self.ratings_sum
        self.sum(:rating)
    end
    def self.popular_shows
        self.all.where("rating > ?", 5)
    end
    def self.shows_by_alphabetical_order
        self.all.order(:name)
    end
end