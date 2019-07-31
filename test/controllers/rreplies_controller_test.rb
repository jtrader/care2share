require 'test_helper'

class RrepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rreply = rreplies(:one)
  end

  test "should get index" do
    get rreplies_url
    assert_response :success
  end

  test "should get new" do
    get new_rreply_url
    assert_response :success
  end

  test "should create rreply" do
    assert_difference('Rreply.count') do
      post rreplies_url, params: { rreply: { relpy_id: @rreply.relpy_id, text: @rreply.text, user_id: @rreply.user_id } }
    end

    assert_redirected_to rreply_url(Rreply.last)
  end

  test "should show rreply" do
    get rreply_url(@rreply)
    assert_response :success
  end

  test "should get edit" do
    get edit_rreply_url(@rreply)
    assert_response :success
  end

  test "should update rreply" do
    patch rreply_url(@rreply), params: { rreply: { relpy_id: @rreply.relpy_id, text: @rreply.text, user_id: @rreply.user_id } }
    assert_redirected_to rreply_url(@rreply)
  end

  test "should destroy rreply" do
    assert_difference('Rreply.count', -1) do
      delete rreply_url(@rreply)
    end

    assert_redirected_to rreplies_url
  end
end
