class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.string :issue_dete
      t.string :returune_dete
      t.references :book_no, index: true
      t.references :member, index: true
      t.references :fine_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :borrows, :book_nos
    add_foreign_key :borrows, :members
    add_foreign_key :borrows, :fine_types
  end
end
