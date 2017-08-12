class UsersController < ApplicationController
def new
	@user = User.new
end

def show
	@user = User.find_by(params[:user_id])	
end

def index
	
end

def create
	@user = User.new(user_params)
	if @user.save
	redirect_to @user
	else
	render 'new'
	end
end

private
def user_params
	params.require(:user).permit(:name, :email, :dob, :password, :password_confirmation)
end
end