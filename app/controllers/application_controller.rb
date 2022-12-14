class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
        Current.user=Users.find_by(id: session[:user_id])#find will throu an error if the logged in user in the session not in the db any more!
        end
    end

    def require_user_logged_in! 
        redirect_to sign_in_path, alert: "You must be signed in!!" if Current.user.nil?
    end
end
