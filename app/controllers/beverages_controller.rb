class BeveragesController < ApplicationController

def index
    @user = User.find_by(id: params[:user_id])
    render json: @user.beverages
end

def show

end

def create
    
    @beverage = Beverage.create(beverage_params)
    if @beverage.valid?
        @beverage.save
        @inventory = Inventory.create()
        render json: @beverage
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
    params.require(:beverage).permit(:producer_name, :proprietary_name, :vintage, :category, :image_url, :bin)
end

end
