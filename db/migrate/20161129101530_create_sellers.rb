class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string :username
      t.string :password
      t.string :city
      t.text :description
      t.string :category
      t.string :email
      t.string :phonenumber

      t.timestamps
    end
  end
end
