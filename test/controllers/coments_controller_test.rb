require 'test_helper'

class ComentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get coments_new_url
    assert_response :success
  end

end
