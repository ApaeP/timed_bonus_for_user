require "test_helper"

class PromosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get promos_create_url
    assert_response :success
  end
end
