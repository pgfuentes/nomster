class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
end


class Person < ApplicationRecord
  validates :name, length: { minimum: 3 }
end