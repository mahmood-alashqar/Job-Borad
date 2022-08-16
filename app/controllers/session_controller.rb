class SessionController < ApplicationController

    def new
    end

    def create
            user=Users.find_by(email: params[:email])
            if user.present? && user.authenticate(params[:password])
                Current.user=user
                session[:user_id] = user.id
                redirect_to root_path, notice: "Logged In ..."
            else
                flash[:alert]= "invalid email or password"
                render :new
            end
    end

    def remove
        session[:user_id] = nil
        redirect_to sign_in_path, notice: "Logged Out!!"
    end

end