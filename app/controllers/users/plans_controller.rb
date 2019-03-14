class Users::PlansController < ApplicationController

   def new
   	 @reservation = Reservation.find(params[:reservation_id])
   	 @plans = Plan.all
   end

   def show
   end

   def create
       @plan = Plan.new(plan_params)
       @plan.save
       redirect_to edit_users_reservation_plan_path(@plan)
   end

   def edit
   end

   def update
   end

   private
   def plan_params
   	 params.require(:plan).permit(:plan_name, :plan_description, :plan_image, :price, :reservation_date, :checkout_date, :year, :month, :day, :person, :room_count, :room_type_id)
   end
end
