class CreateCommentsTable < ActiveRecord::Migration
  def up
  	create_table :comments do |t|
  		t.string :author
  		t.text  :body
  		t.integer :url_id
  		t.timestamps :created_at
  	end
  end

  def down
  	drop_table :comments
  end
end



