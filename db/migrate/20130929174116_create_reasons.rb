class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string 	:why1
      t.string 	:why2
      t.string 	:why3
      t.integer :company_id

      t.timestamps
    end
  end
end
