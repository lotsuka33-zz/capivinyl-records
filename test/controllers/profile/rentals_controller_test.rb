require 'test_helper'

class Profile::RentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profile_rentals_index_url
    assert_response :success
  end

end
