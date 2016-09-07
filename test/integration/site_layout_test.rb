require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_select "a[href=?]", root_path
    #assert_select "a[href=?]", about_path
    assert_select "a[href=?]", faq_path
    assert_select "a[href=?]", contactus_path
    assert_select "a[href=?]", blog_path
  end
  
end
