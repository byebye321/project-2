class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path, notice: "Welcome"
    else
      flash.now.alert = "Couldn't sign you in. Please check your email and password."
      render "new"
  end
end

  def destroy
      session[:user_id] = nil
      redirect_to home_path, notice: "Signed out"
    end
end
