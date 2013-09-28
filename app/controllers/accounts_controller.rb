class AccountsController < ApplicationController
#accounts#new, create, are managed by devise. Use superclass to change if needed
	def show
		@account = Account.find(params[:id])
		@company = @account.companies.to_a
	end
end
