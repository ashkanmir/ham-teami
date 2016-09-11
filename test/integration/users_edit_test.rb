require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:ashmiri)
  end
  
  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar",
                                         city: "", 
                                         exp: "", 
                                         work: "", 
                                         about: ""} }

    assert_template 'users/edit'
  end
  
  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@user), params: { user: { name:  name,
                                              email: email,
                                              password:              "",
                                              password_confirmation: "",
                                              city: city, 
                                              exp: exp, 
                                              work: work, 
                                              about: about} }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name,  @user.name
    assert_equal email, @user.email
    assert_equal city, @user.city
    assert_equal exp, @user.exp  
    assert_equal work, @user.work
    assert_equal about, @user.about
  end
  
end
