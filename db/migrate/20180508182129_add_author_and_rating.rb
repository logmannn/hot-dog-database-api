class AddAuthorAndRating < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :author, :string
    add_column :reviews, :rating, :integer        
  end
end
