class DonutsController < ApplicationController

 before_action :set_donut, only: [:show, :edit, :update, :destroy]
  # access all: [:index, :show], user: {except: [:destroy, :update, :edit]}, admin: :all
  
  def index
    @donuts = Donut.all
  end

  def new
    @donut = Donut.new
  end

  def create
    @donut = Donut.new(donut_params)
   if @donut.save
      redirect_to donut_path
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    if @donut.update(donut_params)
      @donut.save
      redirect_to @donut
    else
      render :edit
    end
  end

  def destroy
    if @donut.destroy
      redirect_to games_path, notice: 'Your post was edited successfully'
    else
      render :show, notice: 'penis'
    end
  end

  private

  def donut_params
    params.require(:donut).permit(:title, :description, :email)
  end

  def set_donut
    @donut = Donut.find(params[:id])
  end
  


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
