class AddTripIdToSites < ActiveRecord::Migration
  def change
    add_column :sites, :trip_id, :integer
  end
end
