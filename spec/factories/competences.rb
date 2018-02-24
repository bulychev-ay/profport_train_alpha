FactoryBot.define do
   factory :competence do
      title "Открытие атмосферы на Венере"
   end
   factory :competence_invalid, class: Competence do
      "Ruby"
   end
   factory :new_button_name do
      'Создать'
   end
end