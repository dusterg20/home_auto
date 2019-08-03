require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home Automation"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Home Automation"
  end
end
