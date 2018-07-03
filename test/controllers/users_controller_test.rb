require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    # get new_user_url
    get signup_path
    # get contact_path
    # get about_url
    # get about_path
    # get index_user_path
    get edit_uesr_path
    # p "edit_user_url = " + index_user_path
    # p "about_path = " + about_path
    assert_response :success
  end

  test "should create user" do
    # assert_difference('User.count') do
    #   # post users_url, params: { user: { email: @user.email, name: @user.name, password_digest: @user.password_digest } }
    # end

    # assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, name: @user.name} }
    # patch user_url(@user), params: { user: { email: @user.email, name: @user.name, password_digest: @user.password_digest} }
    # p "hoge " + @user.password_digest
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
