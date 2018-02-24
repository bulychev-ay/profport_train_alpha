require 'rails_helper'

feature 'Содание компетенции' do
   scenario 'с правильными параметрами' do
      visit competences_path
      expect(page).to have_content 'Название'
      #click_on 'Создать'
      click_on attributes_for(:new_button_name)
      expect(page).to have_content 'Новая компетенция'
   end

   scenario 'с неправильными параметрами' do

   end

end