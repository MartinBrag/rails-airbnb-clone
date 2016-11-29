class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.references :seller, foreign_key: true
      t.string :title
      t.text :description
      t.integer :priceperunit
      t.integer :discount
      t.integer :initialquantity
      t.integer :remainingquantity
      t.string :unit
      t.datetime :duration
      t.boolean :promotionstatus
      t.string :producttype
      t.integer :code


      t.timestamps
    end
  end
end
