class AddShowDescToQuery < ActiveRecord::Migration
  def self.up
    add_column :queries, :show_desc, :boolean, :default => false
  end

  def self.down
    remove_column :queries, :show_desc
  end
end
