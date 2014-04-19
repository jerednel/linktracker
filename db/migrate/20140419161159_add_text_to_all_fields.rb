class AddTextToAllFields < ActiveRecord::Migration
  def change
  	change_column :links, :ctyhocn, :text, :limit => nil
  	change_column :links, :status, :text, :limit => nil
  	change_column :links, :anchor_text, :text, :limit => nil
  	change_column :links, :link_type, :text, :limit => nil
  	change_column :links, :contact_email, :text, :limit => nil
  end
end
