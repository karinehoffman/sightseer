class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.integer :trip_id
      t.integer :country_id

      t.timestamps

    end
  end
end
