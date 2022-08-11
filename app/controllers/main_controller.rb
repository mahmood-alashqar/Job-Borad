class MainController < ApplicationController
def index
    flash[:notice]= "Logged in successfully"
    if session[:user_id]
    @user=User.find_by(id: session[:user_id])#find will throu an error if the logged in user in the session not in the db any more!
    end
end
end