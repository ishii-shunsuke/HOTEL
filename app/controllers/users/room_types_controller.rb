class Users::RoomTypesController < ApplicationController

  def index
	  @room_type = Room_type.find(params[:id])
  end

  private
  def room_type_params
  	  params:require(:room_type).permit(:room_type_name, :room_type_description, :room_type_image_id)
end
