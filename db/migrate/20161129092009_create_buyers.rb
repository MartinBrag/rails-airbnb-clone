class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :city

      t.timestamps
    end
  end
end
