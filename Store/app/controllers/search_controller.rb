class SearchController < ApplicationController
	def search_by_type_and_slug
	 case params[:type]
	  when "products"
		@product=Product.where("name like ?","%#{params[:slug]}%")
	  when "brands"
		@brand=Brand.where("name like ?","%#{params[:slug]}%")
	  when "categories"
		@category=Category.where("name like ?","%#{params[:slug]}%")
	 end
	
	end
end