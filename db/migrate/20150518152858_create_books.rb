class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_no
      t.string :title

      t.timestamps null: false
    end
  end
end
