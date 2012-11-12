# == Schema Information
#
# Table name: item_bids
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  item_id    :integer          not null
#  price      :decimal          default(0.0)
#  units      :string(255)      default("USD")
#  updated_at :datetime         not null
#

class ItemBid < ActiveRecord::Base
  # Attributes
  attr_accessible :price, :units
  
  # Relationships
  belongs_to :item
  
  
  
  def offer
  	price
  end # price
  
  def offer=(p)
  	price = price
  end # price
  
  
end # Bid
