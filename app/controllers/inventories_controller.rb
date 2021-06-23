class InventoriesController < ApplicationController

def create
    @inventory = Inventory.create(inventory_params)
   
   if @inventory.valid?
        @inventory.save
        render json: @inventory
    else
        render json: {message: " ", full_messages: @inventory.errors.full_messages }

    end

end

def update
    @inventory = Inventory.find_by(id: params[:id])
    @inventory[:quantity] += params[:quantity]
    @inventory.save

    

    render json: @inventory.user.beverages

end


private

def inventory_params
    params.require(:inventory).permit(:user_id, :beverage_id, :quantity)
end

# def inventory_update
#     params.require(:inventory).permit(:)
# end

end
