class Users::PlansController < ApplicationController

   def new
   	 @reservation = Reservation.find(params[:reservation_id])
   	 @plan = Plan.new
   end

   def show
   end

   def create
   end

   def update
   end

   private
   def plan_params
   	 params.require(:plan).permit(:plan_name, :reservation_id, :plan_description, :plan_image, :price, :reservation_date, :checkout_date, :year, :month, :day, :person, :room_count)
   end
end
