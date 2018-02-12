require 'test_helper'

class WitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @witch = witches(:one)
  end

  test "should get index" do
    get witches_url
    assert_response :success
  end

  test "should get new" do
    get new_witch_url
    assert_response :success
  end

  test "should create witch" do
    assert_difference('Witch.count') do
      post witches_url, params: { witch: { cuteness: @witch.cuteness, description: @witch.description, favorite_element: @witch.favorite_element, favorite_familar: @witch.favorite_familar, img_url: @witch.img_url, img_url: @witch.img_url, knowledge: @witch.knowledge, name: @witch.name, patience: @witch.patience, quickness: @witch.quickness } }
    end

    assert_redirected_to witch_url(Witch.last)
  end

  test "should show witch" do
    get witch_url(@witch)
    assert_response :success
  end

  test "should get edit" do
    get edit_witch_url(@witch)
    assert_response :success
  end

  test "should update witch" do
    patch witch_url(@witch), params: { witch: { cuteness: @witch.cuteness, description: @witch.description, favorite_element: @witch.favorite_element, favorite_familar: @witch.favorite_familar, img_url: @witch.img_url, img_url: @witch.img_url, knowledge: @witch.knowledge, name: @witch.name, patience: @witch.patience, quickness: @witch.quickness } }
    assert_redirected_to witch_url(@witch)
  end

  test "should destroy witch" do
    assert_difference('Witch.count', -1) do
      delete witch_url(@witch)
    end

    assert_redirected_to witches_url
  end
end
