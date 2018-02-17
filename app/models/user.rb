class User < ApplicationRecord
   has_many :skills
   has_many :instructions, through: :skills
end
