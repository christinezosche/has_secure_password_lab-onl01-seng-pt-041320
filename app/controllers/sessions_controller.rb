class SessionsController < ApplicationController

    def create
        @user = User.find_by(name: params[:user][:name])
        if params[:user][:password] == '' || params[:user][:password] == nil
            redirect_to login_path
        elsif @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end
end
