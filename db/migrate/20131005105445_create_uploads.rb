class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :title
      t.text :caption

      t.timestamps
    end
  end
end
