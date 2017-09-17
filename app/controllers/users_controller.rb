class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
    @user = current_user
    @user.setting.assign_attributes(:settings)
  end
end
