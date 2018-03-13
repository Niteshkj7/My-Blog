class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      render 'show'
    else
      render 'new'
    end
  end


  private 

    def user_params
       params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
