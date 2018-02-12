require 'test_helper'

class IntrudersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intruder = intruders(:one)
  end

  test "should get index" do
    get intruders_url
    assert_response :success
  end

  test "should get new" do
    get new_intruder_url
    assert_response :success
  end

  test "should create intruder" do
    assert_difference('Intruder.count') do
      post intruders_url, params: { intruder: { description: @intruder.description, fears: @intruder.fears, img_url: @intruder.img_url, name: @intruder.name, wants: @intruder.wants } }
    end

    assert_redirected_to intruder_url(Intruder.last)
  end

  test "should show intruder" do
    get intruder_url(@intruder)
    assert_response :success
  end

  test "should get edit" do
    get edit_intruder_url(@intruder)
    assert_response :success
  end

  test "should update intruder" do
    patch intruder_url(@intruder), params: { intruder: { description: @intruder.description, fears: @intruder.fears, img_url: @intruder.img_url, name: @intruder.name, wants: @intruder.wants } }
    assert_redirected_to intruder_url(@intruder)
  end

  test "should destroy intruder" do
    assert_difference('Intruder.count', -1) do
      delete intruder_url(@intruder)
    end

    assert_redirected_to intruders_url
  end
end
