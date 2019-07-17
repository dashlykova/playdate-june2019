class Kindergarten < ApplicationRecord
    validates_presence_of :name, :kommun, :address
    has_and_belongs_to_many :users
end
