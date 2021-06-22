class BeveragesController < ApplicationController

def index
    @user = User.find_by(id: params[:user_id])
    render json: @user.beverages
end

def show

end

def create
    @beverage = Beverage.create(beverage_params)
    @inventory = Inventory.create(beverage_id: @beverage.id, user_id: params[:user_id], quantity: params[:quantity])
    if @beverage.valid?
        @beverage.save
        # @inventory = Inventory.create()
        # :id, :proprietary_name, :producer_name, :vintage, :image_url, :bin
        render json: {beverage: @beverage, inventories: @beverage.inventories }
    else
        render json: {message: " ", full_messages: @beverage.errors.full_messages }
    end
end

def destroy
    @beverage = Beverage.find_by(id: params[:id])
    @beverage.inventories.destroy_all
    @beverage.destroy

    render json: @beverage
end

private

def beverage_params
    params.require(:beverage).permit(:producer_name, :proprietary_name, :vintage, :category, :image_url, :bin, :user_id, :quantity)
end

end
