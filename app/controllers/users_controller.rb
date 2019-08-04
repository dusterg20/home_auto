class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    user_full_name = (@user.fname+" "+@user.lname)
    if @user.save
      flash[:success] = "User "+user_full_name+" Created"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:fname, :lname, :email, :role, :password,
                                   :password_confirmation)
    end
end
