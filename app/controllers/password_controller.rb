class PasswordController < ApplicationController
before_action :require_user_logged_in!

def edit 
end

def update
   if Current.user.update(password_params)
redirect_to root_path, notice: "Password Updated!!"
   else
render :edit
   end
end

def new_reset
end

def create_reset
    @user=Users.find_by(email: params[:email])
    if @user.present?
        #send email
        PasswordMailer.with(user: @user).reset.deliver_now
        redirect_to root_path, notice:"email was sent to #{:email}"
    end
end


def edit_reset
   @user=Users.find_signed!(params[:token], purpose: "password_reset" )
      # :token to authinticate if this is the user who requested to reset/forget password
      # binding.irb : inspect 
rescue ActiveSupport::MessageVerifier::InvalidSignture 
   redirect_to sign_in_path, alert:"Your Token Has Expired Please Try Again!!"
end
def update_reset
   @user=Users.find_signed!(params[:token], purpose: "password_reset" )
   if @user.update(password_params)
      redirect_to sign_in_path, notice: "Your Password Was Reset Successfully!!"
   else
     render :edit_reset
   end
end

  private
  
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end