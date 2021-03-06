class CreateUsers < ActiveRecord::Migration[6.0]
 
  def up
    create_table :users do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email", :null => false
      t.string "password", :limit => 50

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
