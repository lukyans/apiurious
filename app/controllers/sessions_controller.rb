class SessionsController < ApplicationController
  def create
    pp request.env['omniauth.auth']
    # 
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
    end
    redirect_to root_path
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
