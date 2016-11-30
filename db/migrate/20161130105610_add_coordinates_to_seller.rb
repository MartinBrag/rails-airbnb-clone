class AddCoordinatesToSeller < ActiveRecord::Migration[5.0]
  def change
    add_column :sellers, :street, :string
    add_column :sellers, :street_number, :integer
    add_column :sellers, :city_postcode, :string
  end
end
