class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :name
      t.string :descriptor
      t.text :link
      t.belongs_to :groupbuy

      t.timestamps
    end
  end
end
