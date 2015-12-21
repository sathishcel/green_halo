require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get business" do
    get :business
    assert_response :success
  end

  test "should get government" do
    get :government
    assert_response :success
  end

end
