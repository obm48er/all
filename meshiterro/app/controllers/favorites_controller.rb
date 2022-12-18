class FavoritesController < ApplicationController
  
  def create
    post_image = Postimage.find(params[:postimage_id])
    favorite = current_user.favorites.new(postimage_id: post_image.id)
    favorite.save
    redirect_to postimage_path(post_image)
    
  end

  
  def destroy
    post_image = Postimage.find(params[:postimage_id])
    favorite = current_user.favorites.find_by(postimage_id: post_image.id)
    favorite.destroy
    redirect_to postimage_path(post_image)
  end
  
  
end
