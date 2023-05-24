require 'test_helper'

class NextmoveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nextmove_index_url
    assert_response :success
  end

end
