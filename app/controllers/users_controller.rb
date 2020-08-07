class UsersController < ApplicationController
    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = USer.new(user_params)

        if @user.save
            redirect_to @user
        else
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username,:email,:password)
    end
end
