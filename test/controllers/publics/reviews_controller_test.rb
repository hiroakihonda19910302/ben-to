require 'test_helper'

class Publics::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publics_reviews_index_url
    assert_response :success
  end

end
