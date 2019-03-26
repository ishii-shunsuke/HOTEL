class Users::RoomsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def show
      @reservation = Reservation.new
      @room = Room.find(params[:id])
      @plan = Plan.find(params[:plan_id])
  end

  private
  def room_params
  	  params.require(:room).permit(:price, :plan_id, :room_type_id)
  end


end
