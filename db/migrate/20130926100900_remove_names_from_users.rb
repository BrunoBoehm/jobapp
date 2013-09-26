class RemoveNamesFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :FirstName, :string
    remove_column :users, :FamilyName, :string
  end
end
