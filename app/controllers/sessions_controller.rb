class SessionsController < ApplicationController
  def new

  end

  def create
    user = DeveloperUser.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to users_index_path
    else
      render :new
    end
  end
end
