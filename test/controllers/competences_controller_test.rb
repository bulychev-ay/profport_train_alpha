require 'test_helper'

class CompetencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competences_index_url
    assert_response :success
  end

end
