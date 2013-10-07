class AddCompanyIdToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :company_id, :integer
  end
end
