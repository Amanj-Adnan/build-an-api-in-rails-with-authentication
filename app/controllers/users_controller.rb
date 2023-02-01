class UsersController < ApplicationController

  def  index
    @user=DeveloperUser.find(session[:user_id])
    @users= DeveloperUser.all
  end

  def edit
    @user = DeveloperUser.find(session[:user_id])
  end

  def update
    @user = DeveloperUser.find(params[:user_id])

      if @user.update(private_api_key: SecureRandom.hex)
        redirect_to user_edit_path
        flash[:msg] = "the api updated"
      else
        redirect_to users_index_path, alert: "There was an error: #{users_index_path.errors.full_messages.to_sentence}"
      end

  end




end
