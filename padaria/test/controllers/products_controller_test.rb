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

  test "should get product" do
    product = products(:one)

    get :show, id: product.id

    assert_response :success
    assert_equal assigns[:product], product
    assert_select '*', /#{product.name}/
    assert_select '*', /#{product.price}/
    assert_select 'a[href*="/edit"]'
  end

  test "should get edit" do
    product = products(:one)
    get :edit, id: product.id

    assert_response :success
    assert_select 'form[action*=?]', "products/#{product.id}"
    assert_select "input[name*=\"name\"][value=#{product.name}]"
    assert_select "input[name*=\"price\"][value=#{product.price.to_i}]"
    assert_select 'input[type="submit"]'
  end

  test "should update product" do
    product = products(:one)

    old_count = Product.count

    patch :update, id: product, product: { name: 'meu pao', price: 10 }

    assert_equal Product.count, old_count
    assert_equal assigns[:product].name, 'meu pao'
    assert_redirected_to product_path(assigns[:product].id)
  end
end
