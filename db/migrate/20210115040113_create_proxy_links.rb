class CreateProxyLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :proxy_links do |t|
      t.string :name
      t.string :region
      t.text :link
      t.belongs_to :groupbuy

      t.timestamps
    end
  end
end
