class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :FirstName, :string
    add_column :users, :FamilyName, :string
  end
end
