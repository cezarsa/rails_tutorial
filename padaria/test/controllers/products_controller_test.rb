require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'a[href*="welcome"]'
    assert_select 'a[href*="products/new"]'
  end
end
