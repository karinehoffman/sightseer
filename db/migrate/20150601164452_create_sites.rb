class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :photo
      t.string :name
      t.text :description
      t.integer :city_id
      t.string :type_id

      t.timestamps

    end
  end
end
