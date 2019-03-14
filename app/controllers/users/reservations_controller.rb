class Users::ReservationsController < ApplicationController

    def top
	    @reservation = Reservation.new
    end

    def create
	    @reservation = Reservation.new(reservation_params)
        @reservation.user_id = current_user.id
	    @reservation.save
	    redirect_to new_users_reservation_plan_path(@reservation)
    end

    def update
        @reservation = Reservation.find(params[:id])
        @reservation.update(reservation_params)
        redirect_to new_users_reservation_plan_path(@reservation)
    end

    def destroy_when_reservation
    end

    def destroy
    end

    def destroy_complete
    end

    private
    def reservation_params
	    params.require(:reservation).permit(:reservation_date, :checkout_date, :arrival_time, :person, :room_count, :year, :month, :day, :user_id, :plan_id)
    end

end
