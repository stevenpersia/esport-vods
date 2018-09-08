require 'test_helper'

class FavoriteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_index_url
    assert_response :success
  end

end
