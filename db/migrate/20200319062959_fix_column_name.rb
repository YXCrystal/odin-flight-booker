class FixColumnName < ActiveRecord::Migration[5.2]
  def change
      rename_column :flights, :passengers, :adults
  end
end
