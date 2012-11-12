class ItemsController < SecureController
	
	def create
		@item = Item.find_by_id params[:item_id]
		if @item.nil?
			flash[:error] = t( :fail_item_bid_create )
		else
			@item.item_bid params[:item_bid]
			flash[:success] = t( :success_item_bid_create )
		end # if
		redirect_to item_path @item
	end # create
	
	def destroy
		@item = Item.find_by_id params[ :item_id ]
		@item_bid = ItemBid.find_by_id params[ :id ]
		@item_bid.destroy
		flash[:success] = t( :success_item_bid_destroy )
		redirect_to item_path @item
	end # destroy

end # ItemsController
