require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'a[href*="welcome"]'
    assert_select 'a[href*="products/new"]'
  end

  test "should get new" do
    get :new
    assert_not_nil assigns[:product]
    assert_select 'form[action*="products"]'
    assert_select 'input[type="text"]', count: 2
    assert_select 'input[type="submit"]'
  end
end
