require 'test_helper'

class CompetencesControllerTest < ActionDispatch::IntegrationTest
   test "Vivod vseh competences path" do
     get competences_path
     assert_response :success
   end

   test 'Проверка создани записи' do
     post competences_path,
          params: {competence: {title: 'Программирование на Ruby'}}
     assert_equal Competence.last.title, 'Программирование на Ruby'
   end

   test 'Проверка создания записи' do
     assert_difference "Competence.count" do
       post competences_path,
            params: {competence: {title: 'Программирование на Ruby'}}
     end
     assert_equal Competence.last.title, 'Программирование на Ruby'
   end

   test 'Проверка создани записи и перехода на страницу созданной компетенции' do
     assert_difference "Competence.count" do
       post competences_path,
            params: {competence: {title: 'Программирование на Ruby'}}
     end
     assert_redirected_to competence_path(Competence.last)
     assert_equal Competence.last.title, 'Программирование на Ruby'
   end

   #Тест маршрутов
   test 'route_show' do
     assert_generates "/competences/1", controller: 'competences', action: 'show', id: 1
   end

   #Тест на селекторы
   test 'Предтавление вывода всех компетенций' do
     get competences_path
     assert_select "table.table" do
       assert_select 'tbody' do
         assert_select 'td', "Otkritie atmosferi na Venere 0"
       end
     end
   end

   #Тест на селекторы
   test 'Предтавление вывода всех компетенций' do
     get competences_path
     assert_select "table.table"
   end

end
