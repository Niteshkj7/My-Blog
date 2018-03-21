require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "My Blog"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | My Blog"
  end


  test "shold get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | My Blog"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | My Blog"
  end
end
