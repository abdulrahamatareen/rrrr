class CreateFines < ActiveRecord::Migration
  def change
    create_table :fines do |t|
      t.tring :fine_type
      t.string :fine_amunt

      t.timestamps null: false
    end
  end
end
