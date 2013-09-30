class AccountsController < ApplicationController
#accounts#new, create, are managed by devise. Use superclass to change if needed
	def show
		@account = Account.find(params[:id])
		@company = @account.companies.to_a
		#.to_a has replaced deprecated .all
	end
end
