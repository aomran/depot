#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart

	def index
	@products = Product.order(:title)
	@counter = if session[:counter].nil? then session[:counter] = 1
	else session[:counter] += 1
	end
	end
end
