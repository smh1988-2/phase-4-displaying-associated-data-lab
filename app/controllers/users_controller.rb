class UsersController < ApplicationController

    def show
        user = User.all.find_by_id(params[:id])
        render json: user, include:[:items]
    end
end
