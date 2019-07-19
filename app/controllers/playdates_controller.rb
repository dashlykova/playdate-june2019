class PlaydatesController < ApplicationController

  def index
    @kindergartens = Kindergarten.all
  end

end
