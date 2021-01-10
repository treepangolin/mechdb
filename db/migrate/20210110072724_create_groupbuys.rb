class CreateGroupbuys < ActiveRecord::Migration[6.1]
  def change
    create_table :groupbuys do |t|

      t.timestamps
    end
  end
end
