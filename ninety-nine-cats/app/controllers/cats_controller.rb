class CatsController < ActionController::Base


    def index
        @cats = Cat.all 
        render :index 
    end 
end
#     def show 
#         @cat = Cat.find(params[:id])
#         render :show
#     end 

#     def new 
#         @cat = Cat.new 
#         render :new
#     end 

#     def create 
#         @cat = Cat.new(cat_params)
#         if @cat.save
#             redirect_to cat_url(@cat)
#         else 
#             render :json: @cat.errors.full_messages, status 422  
#         end 
#     end 

#     def edit 
#         @cat = Cat.find(params[:id])
#         render :edit

#     end 

#     def update 
#         @cat = Cat.find(params[:id])
#         render :edit

#     end 

#     private 
#     def cat_params 
#         params.require(:cat).permit(:name, :birth_date, :color, :description, :sex )
#     end 

    

# end
