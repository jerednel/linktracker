class ExpandUrlLength < ActiveRecord::Migration
  def change
  	change_column :links, :linking_site, :text, :limit => nil
  end
end
