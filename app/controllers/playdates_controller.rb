class PlaydatesController < ApplicationController

  def index
    @kindergartens = Kindergarten.all
  end

  def new
  end

end
