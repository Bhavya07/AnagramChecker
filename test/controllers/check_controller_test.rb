require 'test_helper'

class CheckControllerTest < ActionController::TestCase
  test "should get anagram" do
    get :anagram
    assert_response :success
  end

end
