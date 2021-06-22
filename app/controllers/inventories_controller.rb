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



private

def inventory_params
    params.require(:inventory).permit(:user_id, :beverage_id, :quantity)
end

end
