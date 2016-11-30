class AddFulladdressToSeller < ActiveRecord::Migration[5.0]
  def change
    add_column :sellers, :full_address, :string
  end
end
