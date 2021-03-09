require "test_helper"

class BonusTimedControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bonus_timed_create_url
    assert_response :success
  end
end
