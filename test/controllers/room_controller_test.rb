require "test_helper"

class RoomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url

    assert_response :success

    json_response = JSON.parse(@response.body)
    assert_equal({ "message" => "Hello, World" }, json_response)
  end
end
