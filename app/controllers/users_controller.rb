class UsersController < ApplicationController
	def new
	end

	def create
		whitelisted_params = user_params
		@user = User.new(whitelisted_params)
		if @user.save
			redirect_to new_user_path
		else
			render :new
		end
	end

	private
	def user_params
		params.require(:user).permit(:username,:email,:password)
	end
end
