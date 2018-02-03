require 'test_helper'

class TermsControllerTest < ActionDispatch::IntegrationTest
  test "should get create," do
    get terms_create,_url
    assert_response :success
  end

  test "should get index," do
    get terms_index,_url
    assert_response :success
  end

  test "should get new" do
    get terms_new_url
    assert_response :success
  end

end
