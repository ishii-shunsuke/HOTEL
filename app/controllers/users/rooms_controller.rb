class Users::RoomsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def show
      @reservation = Reservation.new
      @room = Room.find(params[:id])
      @plan = Plan.find(params[:plan_id])
  end

  def update
      room = Room.find(params[:id])
      room.update(room_params)
      redirect_to users_plan_room_path
  end

  private
  def room_params
  	  params.require(:room).permit(:price, :plan_id, :room_type_id, :reservation_date, :checkout_date, :person, :room_count)
  end


end
