class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table "stores", force: :cascade do |t|
      t.string "store_name"
      t.string "state"
      t.string "city"
      t.string "address_line_2"
      t.string "description"
      t.string "website"
      t.string "phone_number"
      t.string "review"
      t.string "image"
      t.string "lat_long"
    end
  end
end
