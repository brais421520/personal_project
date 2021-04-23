require 'test_helper'

class DivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dives_index_url
    assert_response :success
  end

end
