class BeveragesController < ApplicationController

def index
    byebug
    @user = User.find_by(username: [params])
    # @beverages = 
end

def show

end

private

def beverage_params
    
end

end
