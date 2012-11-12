class Item < ActiveRecord::Base
  attr_accessible :description, :quantity, :title, :reserve_price, :category_id
  
  belongs_to :category

  # has_many :item_bids, :dependent => :destroy
  
  # # Hooks
  # after_save :kill_all_item_bids
  
  # def bid( data = nil )
  # 	offer = self.item_bids.new( data )
  # 	return offer if offer.save
  # 	return nil
  # end # bid
  
  # def item_bid( data = nil )
  # 	bid( data )
  # end # item_bid
  
  # private
  # 	def kill_all_item_bids
  # 		# TODO : make the batch deletion less resource intensive
  # 		self.item_bids.each { |bid| bid.destroy }
  # 	end # kill_all_item_bids
end # Item
