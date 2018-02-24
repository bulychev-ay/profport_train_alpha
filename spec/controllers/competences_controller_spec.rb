require "rails_helper"

RSpec.describe CompetencesController, type: :controller do
   it 'Вывод всех компетенций' do
      get :index
      expect(response).to have_http_status :success
   end

   it 'Вывод конкретной компетенции' do
      compy = create(:competence)
      get :show, params: {id: compy.id}
      expect(response).to have_http_status :success
   end

   it 'Создание компетенции' do
      post :create, params: {competence: {title: 'Открытие атмосферы на Венере'}}
      expect(Competence.last.title).to eq 'Открытие атмосферы на Венере'
   end

   it 'Создание компетенции' do
      #post :create, params: {competence: {title: 'Открытие атмосферы на Венере'}}
      post :create, params: {competence: attributes_for(:competence)}
      expect(Competence.last.title).to eq 'Открытие атмосферы на Венере'
   end

end