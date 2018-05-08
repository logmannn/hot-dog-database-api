class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :review
    add_column :stores, :review_id, :integer
    create_table :reviews do |t|
      t.integer "review"
      t.integer "store_id"
    end
  end
end
