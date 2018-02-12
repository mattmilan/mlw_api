require 'test_helper'

class SpellbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spellbook = spellbooks(:one)
  end

  test "should get index" do
    get spellbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_spellbook_url
    assert_response :success
  end

  test "should create spellbook" do
    assert_difference('Spellbook.count') do
      post spellbooks_url, params: { spellbook: { description: @spellbook.description, img_url: @spellbook.img_url, name: @spellbook.name } }
    end

    assert_redirected_to spellbook_url(Spellbook.last)
  end

  test "should show spellbook" do
    get spellbook_url(@spellbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_spellbook_url(@spellbook)
    assert_response :success
  end

  test "should update spellbook" do
    patch spellbook_url(@spellbook), params: { spellbook: { description: @spellbook.description, img_url: @spellbook.img_url, name: @spellbook.name } }
    assert_redirected_to spellbook_url(@spellbook)
  end

  test "should destroy spellbook" do
    assert_difference('Spellbook.count', -1) do
      delete spellbook_url(@spellbook)
    end

    assert_redirected_to spellbooks_url
  end
end
