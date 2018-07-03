require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # 作成した各リンクのチェック
  test "layout links" do
    get root_path
    # assert_template 'static_pages/home' assert_templateはrais5以上では非推奨
    assert_select "a[href=?]", root_path, count: 2 # root_pathに関連するaタグが2つあるかをチェック
    assert_select "a[href=?]", help_path # 右記のパスのaタグが存在するかどうかチェック
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    
    get contact_path
    assert_select "title", full_title("Contact")
  end
  
end
