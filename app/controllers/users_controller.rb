class UsersController < ApplicationController

    before_action :authenticate_user!

	def create
		user = User.new(user_params)
		user.save
	end

	def show
		@user = User.find(current_user.id)
		@reservations = Reservation.where(user_id: current_user.id)
	end

    private
	def user_params
		params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :gender, :phone_number, :email, :post_number, :prefectures, :city, :block, :password, :password_confirmation)
	end
end


