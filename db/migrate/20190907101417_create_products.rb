class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer "categoryId"
      t.string "name"
      t.string "description"
      t.float "price"
      t.string "image"
      t.string "cpu"
      t.string "camera"
      t.string "size"
      t.string "weight"
      t.string "display"
      t.string "battery"
      t.string "memory"


      t.timestamps
    end
  end
end
