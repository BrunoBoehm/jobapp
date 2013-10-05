class CompaniesController < ApplicationController
	before_filter :authenticate_account!
	#before_filter :correct_account


	def new
		@account = current_account
		@company = Company.new
		@company.build_address
	end

	def create
		@account = current_account
		@company = Company.new(company_params)
		if @company.accounts<<@account && @company.save
			@company.create_mission(statement: "Dummy statement", impact: "Dummy impact")
			@company.create_reason(why1: "You should come because...", why2: "You should come because...", why3: "You should come because...")
			flash[:success] = "Company created!"
			redirect_to current_account
		else
			render 'new'
		end	
	end

	def show
		@company = current_account.companies.find(params[:id])
		@mission = @company.mission
		@reason  = @company.reason
		@json = @company.address.to_gmaps4rails
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		if @company.update_attributes(company_params)
			flash[:success] = "Update successful!"
			redirect_to current_account
		else
			render 'edit'
		end		
	end

	def destroy
		current_account.companies.find(params[:id]).destroy
		flash[:success] = "Company Destroyed"
		redirect_to current_account
	end

	private

	  def company_params
	    params.require(:company).permit(:name, :teaser, :logo, address_attributes: [:country, :city, :zip, :street])
	    #integrates the nested attributes for address that are posted when company gets posted.
	  end

	  def correct_account
	  	@company = current_account.companies.find_by(id: params[:id])
	  	redirect_to root_url if @company.nil?
	  	#we use find_by instead of find because the latter raises an exception when the micropost doesn’t exist instead of returning nil
	  	#is there inside current_account.companies on with the ID of the params ? if yes ok, if nil then redirect
	  end  


end
