class Admins::PlansController < ApplicationController



	def new
		@plan = Plan.new
	end

	def create
		@plan = Plan.new(plan_params)
		if @plan.save
			redirect_to admins_plan_path(@plan.id)
		else
			render :new,  notice:"項目を記入してください。"
		end
	end

	def show
		@plan = Plan.find(params[:id])
	end

	def edit
		@plan = Plan.find(params[:id])
	end

	def update
		@plan = Plan.find(params[:id])
		@plan.update(plan_params)
		redirect_to admins_plan_path(@plan.id)
	end


	private
	def plan_params
		params.require(:plan).permit(:plan_name, :plan_description, :plan_image_id, :price)
	end

end
