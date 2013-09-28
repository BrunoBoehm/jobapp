class JoinTableForAccountsAndCompanies < ActiveRecord::Migration
  def change
  	create_join_table :accounts, :companies
  end
end
