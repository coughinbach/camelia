class BooksDefaultRating < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :rating, :integer, default: 0
  end
end
