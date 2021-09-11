class Vegetable < ApplicationRecord
  has_many :ratings

  def as_json(options = {})
    number_of_ratings = ratings.count
    total = 0
    
    ratings.each do |rating|
      total += rating.value
    end

    average_rating = total/number_of_ratings
    super(options).merge(average_rating: average_rating)
  end
end
