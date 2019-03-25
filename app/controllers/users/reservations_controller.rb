class Users::ReservationsController < ApplicationController

    before_action :authenticate_user!, only: :show

    def top
        @search = Reservation.search(params[:q])
    end

    def new
        @plans = Plan.all
    end

    def create
        @plan = Plan.find(params[:plan_id])
        @room = Room.find(params[:room_id])
        @reservation = Reservation.new(user_id: current_user.id, plan_id: @plan.id, room_id: @room.id)
        # @reservation.id = params[:reservation]
        # @reservation.user_id = current_user.id
	    @reservation.save
	    redirect_to users_reservations_path(@reservation.id)
    end

    def show
        #@reservation = Reservation.new
        #@room = Room.find(params[:id])
    end

    def index
    end


    def destroy_when_reservation
    end

    def destroy
    end

    def destroy_complete
    end


    private
    def reservation_params
	    params.require(:reservation).permit(:reservation_date, :checkout_date, :arrival_time, :person, :room_count, :year, :month, :day, :user_id, :plan_id, :room_type_id, :room_id)
    end

end
