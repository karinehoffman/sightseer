class CreateDestinationsites < ActiveRecord::Migration
  def change
    create_table :destinationsites do |t|
      t.integer :trip_id
      t.integer :country_id
      t.integer :city_id
      t.integer :site_id

      t.timestamps

    end
  end
end
