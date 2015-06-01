class AddNameToTypes < ActiveRecord::Migration
  def change
    add_column :types, :name, :string
    remove_column :types, :type
  end
end
