class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :author
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
