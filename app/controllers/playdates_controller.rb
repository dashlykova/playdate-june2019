class PlaydatesController < ApplicationController

  def index
    @kindergartens = Kindergarten.all
  end

  def new
    @playdate = Playdate.new
  end

  def create
    @playdate = Playdate.new(playdate_params)
    
    if @playdate.save
      redirect_to root_path
      flash[:notice] = 'Your Playdate has been created.'
    else 
      render 'new'
    end
  end

  #def show
  #  redirect_to 'index'
  #end

  private

  def playdate_params
    params.require(:playdate).permit(:name, :email, :date, :letter)
  end

end
