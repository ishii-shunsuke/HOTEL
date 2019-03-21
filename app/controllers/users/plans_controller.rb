class Users::PlansController < ApplicationController



   private
   def plan_params
   	 params.require(:plan).permit(:plan_name, :plan_description, :plan_image, :price, :reservation_date, :checkout_date, :year, :month, :day, :person, :room_count, :room_type_id)
   end
end
