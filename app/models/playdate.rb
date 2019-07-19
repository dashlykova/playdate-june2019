class Playdate < ApplicationRecord
    validates_presence_of :name, :email, :date, :letter
end
