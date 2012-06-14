class AddIndexToUsersEmail < ActiveRecord::Migration
  def self.up
  	add_index(table = :users, :column => :email, {:unique => true}) 
  end

  def self.down
  	remove_index :users, :column => :email, {:unique => true}
end
