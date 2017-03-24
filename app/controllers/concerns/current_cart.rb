module CurrentCart
	
	private
	#Placing method here makes it accessible to all of our controllers
		def set_cart
			@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.id
		end
end
