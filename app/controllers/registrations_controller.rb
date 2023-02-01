class RegistrationsController < ApplicationController



  def  new
    @user = DeveloperUser.new
  end



  def create
    @new_user = DeveloperUser.create!(get_params)
    if @new_user.save
      redirect_to posts_path
    else
      redirect_back fallback_location: developer_users_new_path
    end
  end


  private

  def get_params
    params.permit(:name,:email,:password,:password_confirmation)
  end
end
