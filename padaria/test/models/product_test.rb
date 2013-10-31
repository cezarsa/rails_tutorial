require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "valid product" do
    p = Product.new(name: 'test', price: 1)
    assert p.save
  end

  test "invalid empty product" do
    p = Product.new
    assert !p.save
  end

  test "invalid product without name" do
    p = Product.new(price: 1)
    assert !p.save
  end

  test "invalid product without price" do
    p = Product.new(name: 'abc')
    assert !p.save
  end

  test "invalid product with empty name" do
    p = Product.new(name: '', price: 1)
    assert !p.save
  end

  test "invalid product with price 0" do
    p = Product.new(name: 'abc', price: 0)
    assert !p.save
  end
end
