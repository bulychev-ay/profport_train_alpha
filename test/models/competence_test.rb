require 'test_helper'

class CompetenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   test 'Проверка создание компетенции' do
      100.times do |n|
         compy = competences("compy_#{n}".to_sym)
         assert compy.save
      end
   end

   test 'Проверка создание компетенции без названия' do
      compy = Competence.new
      refute compy.save
   end

   test '100 fixtures' do
      puts Competence.count
      assert_equal 100, Competence.count
   end
end
