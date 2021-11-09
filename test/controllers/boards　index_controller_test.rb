require 'test_helper'

class Boards　indexControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get boards　index_show_url
    assert_response :success
  end

  test "should get new" do
    get boards　index_new_url
    assert_response :success
  end

  test "should get edit" do
    get boards　index_edit_url
    assert_response :success
  end

end
