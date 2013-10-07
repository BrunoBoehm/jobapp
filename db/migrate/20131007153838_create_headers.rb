class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :title
      t.text :caption
      t.integer :company_id

      t.timestamps
    end
  end
end
