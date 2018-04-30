class ShopsController < ApplicationController
	before_action :find_shop, only: [:show, :edit, :update, :destroy]


	def index
		if user_signed_in?
		@shops = Shop.where(:user_id => current_user.id).order("distance ASC")
		end
	end

	def new
		@shop = current_user.shops.build
	end

	def create
		@shop = current_user.shops.build(shop_params)
		if @shop.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		
	end

	def update
		if @shop.update(shop_params)
			redirect_to shop_path(@shop)
		else
			render 'edit'
		end
	end

	def edit 

	end

	def destroy
		@shop.destroy
		redirect_to root_path

	end


 	def shop_params
		params.require(:shop).permit(:title, :distance, :image)
 	end

 	def find_shop
 		@shop = Shop.find(params[:id])
 	end

end
