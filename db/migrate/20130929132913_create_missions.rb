class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :statement
      t.string :impact
      t.integer :company_id

      t.timestamps
    end
  end
end
