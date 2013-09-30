class ReasonsController < ApplicationController

  before_filter :authenticate_account!

  def edit
  	@company = Company.find(params[:company_id])
  	@reason = @company.reason
  end

  def update
  	@company = Company.find(params[:company_id])
  	if @company.reason.update(reason_params)
  		flash[:success] = "Update Successful"
  		redirect_to current_account
	else
		render 'edit'
	end	
  end

  	private

  	def reason_params
  		params.require(:reason).permit(:why1, :why2, :why3)
  	end	
end
