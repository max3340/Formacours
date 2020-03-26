require 'test_helper'

class FormationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get formations_show_url
    assert_response :success
  end

  test "should get index" do
    get formations_index_url
    assert_response :success
  end

  test "should get edit" do
    get formations_edit_url
    assert_response :success
  end

  test "should get update" do
    get formations_update_url
    assert_response :success
  end

  test "should get create" do
    get formations_create_url
    assert_response :success
  end

  test "should get new" do
    get formations_new_url
    assert_response :success
  end

  test "should get destroy" do
    get formations_destroy_url
    assert_response :success
  end

end
