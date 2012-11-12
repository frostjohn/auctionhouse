class AuctionHouseCreateItems < ActiveRecord::Migration
	def change
    
	    create_table(:items) do |t|
			t.integer :category_id
			t.string :title
			t.text :description
			t.float :reserve_price
			t.integer :quantity
			t.timestamps
		end # create_table
			
		create_table( :item_bids ) do |t|
			t.integer :item_id
			t.integer :user_id
			t.decimal :price
			t.timestamps
		end # create_table

	end # change
end # AuctionHouseCreateItems
