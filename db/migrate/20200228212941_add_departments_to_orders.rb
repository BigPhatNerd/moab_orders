class AddDepartmentsToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :department, :string
  end
end
