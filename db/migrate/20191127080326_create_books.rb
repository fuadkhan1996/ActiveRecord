class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.datetime :published_at
      t.integer :author_id, index: true
      t.timestamps
    end
    add_foreign_key :books, :authors, on_delete: :cascade
  end
end
