class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :cover
      t.string :genre
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
