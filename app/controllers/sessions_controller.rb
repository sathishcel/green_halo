class SessionsController < Devise::SessionsController
  layout 'login', only: [:new]

  def check_login
    @user = User.find_by_email(params[:email])
    if @user
      if @user.valid_password?(params[:password])
        render :json => {message: "Logging in"}
      else
        render :json => {message:"Invalid Username or Password"}
      end
    else
      render :json => {message:"Invalid Username or Password"}
    end
  end

end
