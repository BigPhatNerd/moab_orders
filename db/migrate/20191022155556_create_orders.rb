class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.integer :user_id
    	t.string :item
    	t.string :description
    	t.string :size
    	t.decimal :cost
    	t.string :color
    	t.integer :quantity


      t.timestamps
    end
    add_index :orders, :user_id
  end
end
