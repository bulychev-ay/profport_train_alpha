require 'test_helper'

class CompetenceCreateFlowTest < ActionDispatch::IntegrationTest
   test 'test name ' do
      get new_competence_path
      assert_response :success

      post competences_path, params: {competence: {title: 'Venera'}}
      assert_redirected_to competence_path(Competence.last)

      follow_redirect!
      assert_select ".flash-notice", "Competence was successfully created"
   end
end

# rails test test/integration/competence_create_flow.rb
