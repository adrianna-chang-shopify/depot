require 'test_helper'

class CartTest < ActiveSupport::TestCase
	fixtures :products, :carts, :line_items
  test "adding items to cart should update line_items size" do
  	  cart = carts(:bobs_cart)
  	  assert_difference('cart.line_items.size', 1) do
			 	  cart.add_product(products(:ruby))
			end
  end

	test "adding items to cart should update total_price" do
			cart = carts(:bobs_cart)
			assert_difference('cart.total_price', products(:ruby).price) do
					cart.add_product(products(:ruby))
			end
	end
end
