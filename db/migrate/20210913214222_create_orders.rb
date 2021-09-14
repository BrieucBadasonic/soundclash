class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country
      t.string :order_number

      t.timestamps
    end
  end
end
