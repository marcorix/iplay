class AddUrlToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :img_url, :string
  end

end
