class KindergartensController < ApplicationController
  
  def update
    kindergarten = Kindergarten.find(params[:id])
    kindergarten.users.push(current_user)
    flash[:notice] = "You are linked with the Kindergarten now"
    redirect_back(fallback_location: root_path)
  end

end
