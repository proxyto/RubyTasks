class CategoriesController < ApplicationController
	def count
		render json:Category.count
	end

	def index 
      render json:Category.all
   	end

   def range
     render json:Category.where('id > ?',params[:id])
   end

   def from
     render  json:Category.where('id > ?',params[:id])
   end

   def create
   	 @category=Category.new(category_params)
   	 if @category.save
   	 	render json: @category,status: :created
   	 else
   	 	 render json: @category.errors,status: :unprocessable_entity
     end
   end
   
   def show
    	render json:Category.find(params[:id])

   end

   def destroy 
   	@category=Category.find(params[:id])
   	@category.destroy
   	render json:@category,status: :destroyed
   end


   private
    def category_params
    	params.permit(:name, :description)
    end
    
end