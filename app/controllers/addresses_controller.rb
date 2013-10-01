class AddressesController < ApplicationController
	def new
		@address = Address.new
	end

	def create
		@address = Address.new
		if @address.save
			flash[:success] = "Address created !"
			redirect_to address_path
		else
			render 'new'
		end
	end

	def edit
		@address = Address.find(params[:id])
	end

	def update
		@address = Address.find(params[:id])
		if @address.update_attributes(address_params)
			flash[:success] = "Address updated"
			redirect_to address_path
		else
			render 'edit'
		end
	end

	def destroy
		Address.find(params[:id]).destroy
		flash[:success] = "Company Destroyed"
		redirect_to root_url
	end



	private

	def address_params
		params.require(:address).permit(:country, :city, :street, :zip)
	end
end