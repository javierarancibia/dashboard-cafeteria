class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :blend
      t.integer :total
      t.datetime :date_sale

      t.timestamps
    end
  end
end
