class ProductsController < ApplicationController
	def count
		render json:Product.count
	end

	def index 
      render json:Product.all
   	end

   def range
     render json:Product.where('id > ?',params[:id])
   end

   def from
     render  json:Product.where('id > ?',params[:id])
   end

   def create
   	 @product=Product.new(product_params)
   	 if @product.save
   	 	render json: @category,status: :created
   	 else
   	 	 render json: @product.errors,status: :unprocessable_entity
     end
   end
   
   def show
    	render json:Product.find(params[:id])
   end
    
   def destroy
    @product=Product.find(params[:id])
    @product.destroy
    render json:@product,status: :destroyed
   end
   private
    def product_params
    	params.permit(:name, :description)
    end
    
end