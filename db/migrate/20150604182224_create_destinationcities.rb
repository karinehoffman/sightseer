class CreateDestinationcities < ActiveRecord::Migration
  def change
    create_table :destinationcities do |t|
      t.integer :trip_id
      t.integer :country_id
      t.integer :city_id

      t.timestamps

    end
  end
end
