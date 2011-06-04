class AddAccessmodeToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :accessmode, :integer
  end

  def self.down
    remove_column :posts, :accessmode
  end
end
