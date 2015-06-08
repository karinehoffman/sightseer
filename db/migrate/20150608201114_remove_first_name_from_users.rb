class RemoveFirstNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :first_name
    add_column :users, :name, :string
  end
end
