class Place < ApplicationRecord
    belongs_to :user
    validates :name, :address, :description, length: { minimum: 2 }
end
