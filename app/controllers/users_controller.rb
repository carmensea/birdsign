class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]

  def index
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Settings were successfully updated.'
    else
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(setting_attributes: [:address1, :address2, :city, :state, :zip])
    end

    def set_user
      @user = current_user
    end

end
