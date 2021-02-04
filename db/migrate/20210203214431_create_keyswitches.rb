class CreateKeyswitches < ActiveRecord::Migration[6.1]
  def change
    create_table :keyswitches do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :travel_type
      t.string :weight
      t.string :travel
      t.string :manufacturer

      t.timestamps
    end
  end
end
