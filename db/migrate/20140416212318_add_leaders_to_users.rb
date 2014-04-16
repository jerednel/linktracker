class AddLeadersToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :director, :string
  	add_column :users, :senior, :string
  end
end
