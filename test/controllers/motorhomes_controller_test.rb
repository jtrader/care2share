require 'test_helper'

class MotorhomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motorhome = motorhomes(:one)
  end

  test "should get index" do
    get motorhomes_url
    assert_response :success
  end

  test "should get new" do
    get new_motorhome_url
    assert_response :success
  end

  test "should create motorhome" do
    assert_difference('Motorhome.count') do
      post motorhomes_url, params: { motorhome: { make: @motorhome.make, model: @motorhome.model } }
    end

    assert_redirected_to motorhome_url(Motorhome.last)
  end

  test "should show motorhome" do
    get motorhome_url(@motorhome)
    assert_response :success
  end

  test "should get edit" do
    get edit_motorhome_url(@motorhome)
    assert_response :success
  end

  test "should update motorhome" do
    patch motorhome_url(@motorhome), params: { motorhome: { make: @motorhome.make, model: @motorhome.model } }
    assert_redirected_to motorhome_url(@motorhome)
  end

  test "should destroy motorhome" do
    assert_difference('Motorhome.count', -1) do
      delete motorhome_url(@motorhome)
    end

    assert_redirected_to motorhomes_url
  end
end
