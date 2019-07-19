class PlaydatesController < ApplicationController

  def index
    @kindergartens = Kindergarten.all
  end

  def new

  end

  def create
    @playdate = Playdate.new(playdate_params)
    
  end

  private

  def playdate_params
    params.require(:playdate).permit(:name, :email, :date, :letter)
  end

end
