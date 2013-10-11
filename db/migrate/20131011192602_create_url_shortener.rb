class CreateUrlShortener < ActiveRecord::Migration
  
  def up
  	create_table :links do |t|
  		t.string :original
  		t.string  :shorturl
  		t.timestamps :created_at
  	end
  end

  def down
  	drop_table :links
  end
end


