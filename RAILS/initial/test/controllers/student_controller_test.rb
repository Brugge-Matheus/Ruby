require "test_helper"

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get student_list_url
    assert_response :success
  end
end
