class AddNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :familyname, :string
  end
end
