require 'test_helper'

class StaticsControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_select 'h1', /padaria/i
    assert_select 'p', /bem-vindo/i
    links = assert_select 'a'
    assert_match /about/, links[0]['href']
    assert_select 'title', /bem-vindo/i
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select '*', /fresquinho/
    links = assert_select 'a'
    assert_match /welcome/, links[0]['href']
    assert_select 'title', /sobre/i
  end
end
