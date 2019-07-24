require 'test_helper'

class LengthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @length = lengths(:one)
  end

  test "should get index" do
    get lengths_url
    assert_response :success
  end

  test "should get new" do
    get new_length_url
    assert_response :success
  end

  test "should create length" do
    assert_difference('Length.count') do
      post lengths_url, params: { length: { length: @length.length, reference: @length.reference } }
    end

    assert_redirected_to length_url(Length.last)
  end

  test "should show length" do
    get length_url(@length)
    assert_response :success
  end

  test "should get edit" do
    get edit_length_url(@length)
    assert_response :success
  end

  test "should update length" do
    patch length_url(@length), params: { length: { length: @length.length, reference: @length.reference } }
    assert_redirected_to length_url(@length)
  end

  test "should destroy length" do
    assert_difference('Length.count', -1) do
      delete length_url(@length)
    end

    assert_redirected_to lengths_url
  end
end
