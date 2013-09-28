class CompaniesController < ApplicationController
	before_filter :authenticate_account!

	def new
		@account = current_account
		@company = Company.new
	end

	def create
		@account = current_account
		@company = Company.new(company_params)
		if @company.accounts<<@account && @company.save
			flash[:success] = "Company created!"
			redirect_to current_account
		else
			redirect_to new_company_path
		end	
	end

	def show
		@company = current_account.companies.find(params[:id])
	end

	def edit
		@account = current_account
		@company = Company.find(params[:id])
	end

	def update
		@account = current_account
		@company = Company.find(params[:id])

		if @company.update_attributes(company_params)
			flash[:success] = "Update successful!"
			redirect_to current_account
		else
			redirect_to edit_company_path(@company)
		end		
	end

	private

	  def company_params
	    params.require(:company).permit(:name, :teaser)
	  end
end
