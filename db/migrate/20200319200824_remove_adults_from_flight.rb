class RemoveAdultsFromFlight < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :adults
  end
end
