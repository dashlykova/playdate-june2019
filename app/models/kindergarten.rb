class Kindergarten < ApplicationRecord
    validates :name, presence: true
    validates :kommun, presence: true
    validates :address, presence: true
end
