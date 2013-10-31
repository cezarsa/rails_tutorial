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

  test "should create product" do
    old_count = Product.count

    post :create, product: { name: 'meu pao', price: 10 }

    assert_equal Product.count, old_count + 1
    assert_equal assigns[:product].name, 'meu pao'
    assert_redirected_to product_path(assigns[:product].id)
  end
end
