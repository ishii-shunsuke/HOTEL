class Admins::ReservationsController < ApplicationController


    def index
    	gon.reservations_A = Reservation.where(plan_id: 1).count
    	gon.reservations_B = Reservation.where(plan_id: 2).count
    	gon.reservations_C = Reservation.where(plan_id: 3).count
    	gon.reservations_D = Reservation.where(plan_id: 4).count
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        @user = User.find(@reservation.user_id)
        @reservation.destroy
        redirect_to admins_user_path(@user.id)
    end


    private
    def reservation_params
	    params.require(:reservation).permit(:reservation_date, :checkout_date, :arrival_time, :person, :room_count, :year, :month, :day, :user_id, :plan_id, :room_type_id, :room_id)
    end

end
