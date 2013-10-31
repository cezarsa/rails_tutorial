require 'test_helper'

class StaticsControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_select 'h1', /padaria/i
    assert_select 'p', /bem-vindo/i
  end
end
