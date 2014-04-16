class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.string :ctyhocn
    	t.string :linking_site
    	t.string :status
    	t.string :anchor_text
    	t.string :link_type
    	t.integer :pagerank
    	t.date :date_requested
    	t.date :date_active
    	t.string :contact_email
    	t.integer :user_id
      t.timestamps
    end
  end
end
