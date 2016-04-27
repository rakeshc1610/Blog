class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.references :users


      t.timestamps null: false
    end
  end
end