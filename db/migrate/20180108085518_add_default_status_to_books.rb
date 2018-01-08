class AddDefaultStatusToBooks < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :status, :string, :default => "unread"
  end
end
