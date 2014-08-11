class Reading < ActiveRecord::Base

  scope :location, lambda { |query|
    where(["location LIKE ?", "#{query}"])
  }

end
