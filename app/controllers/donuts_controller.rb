class DonutsController < ApplicationController

	def upvote 
		@donut = Donut.find(params[:id])
		@donut.upvote_by current_user
		redirect_to :back
	end  

	def downvote
		@donut = Donut.find(params[:id])
		@donut.downvote_by current_user
		redirect_to :back
	end
end
