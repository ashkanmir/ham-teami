require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 
  test "should get home" do
    get root_path
    assert_response :success
    #assert_select "title", "هم تیمی"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    #assert_select "title", "هم تیمی"
  end
  
  test "should get contactus" do
    get contactus_path
    assert_response :success
    #assert_select "title", "هم تیمی"
  end
  
  test "should get FAQ" do
    get faq_path
    assert_response :success
    #assert_select "title", "هم تیمی"
  end
  
  test "should get blog" do
    get blog_path
    assert_response :success
    #assert_select "title", "هم تیمی"
  end
  
end
