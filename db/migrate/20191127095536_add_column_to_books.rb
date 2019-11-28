class AddColumnToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :book_name, :string
  end
end
