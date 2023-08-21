class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :product_name
      t.string :type
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
