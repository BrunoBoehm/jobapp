class DropUploadTable < ActiveRecord::Migration
  def up
  	drop_table :uploads
  end

  def down
  	create_table "uploads" do |t|
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  	end
  end

end
