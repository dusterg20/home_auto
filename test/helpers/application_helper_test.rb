require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Home Automation"
    assert_equal full_title("Help"), "Help | Home Automation"
  end
end
