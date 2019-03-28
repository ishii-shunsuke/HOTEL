class Admins::UsersController < ApplicationController

  PER = 8


  def index
   	  @search = User.page(params[:page]).ransack(params[:q])
   	  @users = @search.result
  end

  def show
      @user = User.find(params[:id])
      @reservations = Reservation.where(user_id: @user)
  end


  private
  def users_params
	  params.require(:user).permit(:full_name, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :gender, :phone_number, :email, :post_number, :prefectures, :city, :block, :password)
  end


end
