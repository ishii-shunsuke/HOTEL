class Users::ReservationsController < ApplicationController


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
        # @reservation.user_id = current_user.id
	    @reservation.save
	    redirect_to users_reservations_path(@reservation.id)
    end

    def index
    end


    def destroy_when_reservation
        @reservation = Reservation.where(user_id: current_user.id)
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy
        redirect_to users_reservation_cancel_path
    end

    def destroy_complete
    end


    private
    def reservation_params
	    params.require(:reservation).permit(:reservation_date, :checkout_date, :arrival_time, :person, :room_count, :year, :month, :day, :user_id, :plan_id, :room_type_id, :room_id)
    end

end
