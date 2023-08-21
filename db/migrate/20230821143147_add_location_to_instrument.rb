class AddLocationToInstrument < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :location, :string
  end
end
