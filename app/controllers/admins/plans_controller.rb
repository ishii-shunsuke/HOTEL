class Admins::PlansController < ApplicationController


  before_action :authenticate_admin!


  def index
   	  @search = Plan.page(params[:page]).ransack(params[:q])
   	  @plans = @search.result
  end


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

	def destroy
		@plan = Plan.find(params[:id])
		@plan.destroy
		redirect_to admins_plans_path
	end


	private
	def plan_params
		params.require(:plan).permit(:plan_name, :plan_description, :plan_image, :price)
	end

end
