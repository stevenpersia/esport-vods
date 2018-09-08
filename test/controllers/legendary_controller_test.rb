require 'test_helper'

class LegendaryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get legendary_index_url
    assert_response :success
  end

end
