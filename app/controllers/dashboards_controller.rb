class DashboardsController < ApplicationController

  def index
    @kindergartens = Kindergarten.all
  end

end
