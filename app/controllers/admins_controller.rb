class AdminsController < ApplicationController
	before_filter :authenticate_admin!

	def index
	@admins = Admin.all
	end

	def show
	@admins = Admin.find(params[:id])
	end	

end
