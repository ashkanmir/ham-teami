class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)  
    if @user.save
      flash[:success] = "به هم تیمی خوش اومدی! به راحتی میتونی یه همکار خوب اینجا پیدا کنی!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :city, :exp, :about, :work)
    end
  
end
