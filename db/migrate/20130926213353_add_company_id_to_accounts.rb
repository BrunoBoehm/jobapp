class AddCompanyIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :company_id, :string
  end
end
