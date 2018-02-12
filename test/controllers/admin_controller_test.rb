require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get spellbook" do
    get admin_spellbook_url
    assert_response :success
  end

  test "should get recipe" do
    get admin_recipe_url
    assert_response :success
  end

  test "should get container" do
    get admin_container_url
    assert_response :success
  end

  test "should get ingredient" do
    get admin_ingredient_url
    assert_response :success
  end

  test "should get familiar" do
    get admin_familiar_url
    assert_response :success
  end

  test "should get witch" do
    get admin_witch_url
    assert_response :success
  end

  test "should get customer" do
    get admin_customer_url
    assert_response :success
  end

  test "should get intruder" do
    get admin_intruder_url
    assert_response :success
  end

end
