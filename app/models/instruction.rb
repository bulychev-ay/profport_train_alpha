class Instruction < ApplicationRecord
   belongs_to :competence
   has_many :skills
   has_many :users, through: :skills
end
