class UsersController < ApplicationController


    def new
	end

	def edit
		@user = User.find(params[:id])
	end


	def create
		user = User.new(user_params)
		user.save
	end

    private
	def user_params
		params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :gender, :phone_number, :email, :post_number, :prefectures, :city, :block, :password, :password_confirmation)
	end
end





end
