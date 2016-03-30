class BrandsController < ApplicationController
   def count 
     render json:Brand.count
   end

   def index 
      render json:Brand.all
   end

   def range
     render json:Brand.where('id > ?',params[:id])
   end

   def from
     render  json:Brand.where('id > ?',params[:id])
   end

   def create
   	 @brand=Brand.new(brand_params)
   	 if @brand.save
   	 	render json: @brand,status: :created
   	 else
   	 	 render json: @brand.errors,status: :unprocessable_entity
     end
   end
   def show
    	render json:Brand.find(params[:id])
    end

   def destroy
   	@brand=Brand.find(params[:id])
   	@brand.destroy
   	render json:@brand,status: :destroyed
   end
   private
    def brand_params
    	params.permit(:name, :description)
    end
    
end