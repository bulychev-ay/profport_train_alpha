class Competence < ApplicationRecord
  validates :title, presence: {message: 'Не может быть пустым'}, length: { maximum: 50 }
end
