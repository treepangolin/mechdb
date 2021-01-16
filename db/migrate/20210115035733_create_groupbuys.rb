class CreateGroupbuys < ActiveRecord::Migration[6.1]
  def change
    create_table :groupbuys do |t|
      t.string :name
      t.integer :category
      t.date :start
      t.date :end
      t.text :image

      t.timestamps
    end
  end
end
