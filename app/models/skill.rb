class Skill < ApplicationRecord
   has_many :instructions
   has_many :users
end
