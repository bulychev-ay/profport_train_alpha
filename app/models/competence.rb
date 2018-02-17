class Competence < ApplicationRecord

   has_many :instructions

   validates :title, presence: { message: 'Не может быть пустым' }, length: { maximum: 50 }

   after_create :create_linked_instructions

   has_many :terms
   accepts_nested_attributes_for :terms

   def create_linked_instructions

   end

end
