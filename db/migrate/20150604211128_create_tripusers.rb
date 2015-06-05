class CreateTripusers < ActiveRecord::Migration
  def change
    create_table :tripusers do |t|
      t.integer :trip_id
      t.integer :user_id

      t.timestamps

    end
  end
end
