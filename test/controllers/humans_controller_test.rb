require 'test_helper'

class HumansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get humans_new_url
    assert_response :success
  end

end
