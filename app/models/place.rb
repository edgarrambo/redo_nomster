class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    geocoded_by :address
    after_validation :geocode

    validates :name, :address, :description, length: { minimum: 2 }
end
