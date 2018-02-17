require 'test_helper'

class CompetencesControllerTest < ActionDispatch::IntegrationTest
  test "Vivod vseh competences path" do
    get competences_path
    assert_response :success
  end

end
