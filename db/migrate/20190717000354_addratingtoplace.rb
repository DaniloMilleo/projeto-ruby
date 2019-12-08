class Addratingtoplace < ActiveRecord::Migration[5.2]
  	change_table :places do |t|
	  t.integer :rating
  	end
end
