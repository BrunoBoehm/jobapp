class MissionsController < ApplicationController
  
  before_filter :authenticate_account!
  #before_filter :correct_account

  def edit
	@mission = Mission.find(params[:id])
  end

  def update
	@mission = Mission.find(params[:id])
	if @mission.update(mission_params)
		flash[:success] = "Update successful!"
		redirect_to current_account
	else
		render 'edit'
	end		
  end

	private

	  def mission_params
	    params.require(:mission).permit(:statement, :impact)
	  end

	  def correct_account
	  	@mission = Mission.find_by(id: params[:id])
	  	@company = @mission.company
	  	redirect_to root_url unless @company.in?(current_account.companies)
	  	#is the company (that the actual mission belongs to) part of the current_account companies ?
	  	#we use find_by instead of find because the latter raises an exception when the micropost doesn’t exist instead of returning nil
	  end  
end
