class RegistrationController < ApplicationController
def new
@user=User.new
end


def create
    # render params =
    #  Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"", "password"=>"[FILTERED]", "Password_Confirmation"=>"[FILTERED]"}, "commit"=>"Submit"}
   # @user=User.new(params[:user]) # user params ={"email"=>"", "password"=>"[FILTERED]", "Password_Confirmation"=>"[FILTERED]"}
    @user=User.new(user_params)
    if @user.save
        # cookie[:user_id]
        session[:user_id]=@user.id
        redirect_to root_path, notice: "Created Successfully"
    else
        render :new
    end

end


private


def user_params
params.require(:user).permit(:email, :password, :password_confirmation) #specify the exact attribute allowed for the user
end

end