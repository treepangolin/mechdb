class ChangeStartAndEnd < ActiveRecord::Migration[6.1]
  def change
    rename_column :groupbuys, :start, :start_date
    rename_column :groupbuys, :end, :end_date
  end
end
