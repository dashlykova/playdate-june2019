class KindergartensController < ApplicationController
  def index 
    @kindergartens = Kindergarten.all
  end  

  #def create
  #  @kindergarten = Kindergarten.new(kindergarten_params)
  #end

  #private

  #def kindergarten_params
  #  params.require(:kindergarten).permit(:name, :kommun, :address)
  #end
end
