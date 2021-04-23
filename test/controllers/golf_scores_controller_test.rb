require 'test_helper'

class GolfScoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golf_scores_index_url
    assert_response :success
  end

end
