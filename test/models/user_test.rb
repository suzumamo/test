require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup # testの前に呼び出す処理を記述するもの
    @user = User.new(name: "hogeo", email: "moge@moge.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  # test "should be valid" do
  #   assert @user.valid?
  # end
  
  # test "name should be present" do
  #   @user.name = "     "
  #   assert_not @user.valid?
  # end
  
  # test "email should be present" do
  #   @user.email = "     "
  #   assert_not @user.valid?
  # end
  
  # test "name should not be too long" do
  test "name hogehoge" do
    @user.name = "a" * 51 # わざと50以上の文字数にしてtest。user.rbではvalidatesでlengthのmaximum50にしてる
    assert_not @user.valid?
  end

  # test "email validation should accept valid addresses" do
  #   valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
  #                       first.last@foo.jp alice+bob@baz.cn]
  #   valid_addresses.each do |valid_address|
  #     @user.email = valid_address
  #     assert @user.valid?, "#{valid_address.inspect} should be valid"
  #   end
  # end
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    duplicate_user = @user.dup # dupはオブジェクトの複製をしてくれる
    duplicate_user.email = @user.email.upcase # upcaseは文字列を大文字にする
    @user.save
    assert_not duplicate_user.valid?
    # puts duplicate_user.name
  end
  
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    # @user.email = mixed_case_email.downcase
    @user.save
    # puts mixed_case_email.downcase
    # puts @user.reload.email
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "test" do
    # if nil
    # puts "is null"
    # else
    # puts "is not null"
    # end
    # 10.times { 
    #   # h = [:small, :large][rand.round] 
    #   p h.inspect
    # }
        
    # 10.times { 
    # puts  rand.round
    # }
    # p assert_difference('User.count')
  end
  
  # test "password should be present (nonblank)" do
  #   @user.password = @user.password_confirmation = " " * 6
  #   assert_not @user.valid?
  # end

  # test "password should have a minimum length" do
  #   @user.password = @user.password_confirmation = "a" * 5
  #   assert_not @user.valid?
  # end
end
