require 'test_helper'

class CrepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creply = creplies(:one)
  end

  test "should get index" do
    get creplies_url
    assert_response :success
  end

  test "should get new" do
    get new_creply_url
    assert_response :success
  end

  test "should create creply" do
    assert_difference('Creply.count') do
      post creplies_url, params: { creply: { comment_id: @creply.comment_id, text: @creply.text, user_id: @creply.user_id } }
    end

    assert_redirected_to creply_url(Creply.last)
  end

  test "should show creply" do
    get creply_url(@creply)
    assert_response :success
  end

  test "should get edit" do
    get edit_creply_url(@creply)
    assert_response :success
  end

  test "should update creply" do
    patch creply_url(@creply), params: { creply: { comment_id: @creply.comment_id, text: @creply.text, user_id: @creply.user_id } }
    assert_redirected_to creply_url(@creply)
  end

  test "should destroy creply" do
    assert_difference('Creply.count', -1) do
      delete creply_url(@creply)
    end

    assert_redirected_to creplies_url
  end
end
