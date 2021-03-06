class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      redirect_to :products, notice: 'Account created!'
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end