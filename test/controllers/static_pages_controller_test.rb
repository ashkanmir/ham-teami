require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "هم تیمی"
  end
  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "هم تیمی"
  end
  
  test "should get contactus" do
    get static_pages_contactus_url
    assert_response :success
    assert_select "title", "هم تیمی"
  end

end
