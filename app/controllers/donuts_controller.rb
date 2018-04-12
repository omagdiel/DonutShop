class DonutsController < ApplicationController

 before_action :set_donut, only: [:show, :edit, :update, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :update, :edit]}, site_admin: :all
  
  def index
    @donuts = Donut.all
  end

  def new
    @donut = Donut.new
  end

  def create
    @donut = Donut.new(donut_params)#.tap{ |u| u[:dough] = u[:dough].to_i })
    # @donut = Donut.new(donut_params.tap{ |u| u[:frosting] = u[:frosting].to_i })
   if @donut.save
      redirect_to edit_donut_path(id: @donut.id)
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
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @donut.destroy
      redirect_to games_path, notice: 'Your post was edited successfully'
    else
      render :show, notice: 'your donut has not been destroy'
    end
  end

	def upvote 
	@donut = Donut.find(params[:id])
	@donut.upvote_by current_user
	redirect_to donuts_path
	end  

	def downvote
	@donut = Donut.find(params[:id])
	@donut.downvote_by current_user
	redirect_to donuts_path
	end

  private

  def donut_params
    params.require(:donut).permit(:title, :dough, :frosting, :topping, :price)
  end

  def set_donut
    @donut = Donut.find(params[:id])
  end
  
end
