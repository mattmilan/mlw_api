require 'test_helper'

class FamiliarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @familiar = familiars(:one)
  end

  test "should get index" do
    get familiars_url
    assert_response :success
  end

  test "should get new" do
    get new_familiar_url
    assert_response :success
  end

  test "should create familiar" do
    assert_difference('Familiar.count') do
      post familiars_url, params: { familiar: { description: @familiar.description, disicpline: @familiar.disicpline, distracted_by: @familiar.distracted_by, element: @familiar.element, img_url: @familiar.img_url, memory: @familiar.memory, name: @familiar.name, origin: @familiar.origin, speed: @familiar.speed, tooltip: @familiar.tooltip } }
    end

    assert_redirected_to familiar_url(Familiar.last)
  end

  test "should show familiar" do
    get familiar_url(@familiar)
    assert_response :success
  end

  test "should get edit" do
    get edit_familiar_url(@familiar)
    assert_response :success
  end

  test "should update familiar" do
    patch familiar_url(@familiar), params: { familiar: { description: @familiar.description, disicpline: @familiar.disicpline, distracted_by: @familiar.distracted_by, element: @familiar.element, img_url: @familiar.img_url, memory: @familiar.memory, name: @familiar.name, origin: @familiar.origin, speed: @familiar.speed, tooltip: @familiar.tooltip } }
    assert_redirected_to familiar_url(@familiar)
  end

  test "should destroy familiar" do
    assert_difference('Familiar.count', -1) do
      delete familiar_url(@familiar)
    end

    assert_redirected_to familiars_url
  end
end
