require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_url
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post ingredients_url, params: { ingredient: { container_id: @ingredient.container_id, description: @ingredient.description, element: @ingredient.element, img_url: @ingredient.img_url, name: @ingredient.name, origin: @ingredient.origin, recipe_id: @ingredient.recipe_id, tooltip: @ingredient.tooltip } }
    end

    assert_redirected_to ingredient_url(Ingredient.last)
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { container_id: @ingredient.container_id, description: @ingredient.description, element: @ingredient.element, img_url: @ingredient.img_url, name: @ingredient.name, origin: @ingredient.origin, recipe_id: @ingredient.recipe_id, tooltip: @ingredient.tooltip } }
    assert_redirected_to ingredient_url(@ingredient)
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete ingredient_url(@ingredient)
    end

    assert_redirected_to ingredients_url
  end
end
