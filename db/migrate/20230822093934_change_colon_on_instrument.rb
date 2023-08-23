class ChangeColonOnInstrument < ActiveRecord::Migration[7.0]
  def change
    rename_column :instruments, :type, :category
  end
end
