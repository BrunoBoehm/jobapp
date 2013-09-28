class RemoveCompanyIdFromAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :company_id, :integer
  end
end
