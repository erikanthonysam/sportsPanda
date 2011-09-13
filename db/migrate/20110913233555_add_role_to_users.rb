class AddRoleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :boolean 
  end

  def self.down
    remove_column :users, :role
  end
end
