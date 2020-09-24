class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    # First see if the image is already in the db
    # (to avoid duplicates)
    image = Image.find_by( unsplash_id: params[:unsplash_id] )

    if image == nil
      # If we didnt find in the db it's safe to create the saved image
      # (because this image is being saved for the first time by any user)
      image = Image.create!(
        unsplash_id: params[:unsplash_id],
        url: params[:url],
        alt_description: params[:alt_description],
        description: params[:description],
        latitude: params[:latitude],
        longitude: params[:longitude],
        location_name: params[:location_name]
      )
    end
    # image is going to have a valid image object in it by this line
    # It will either be a pre-existing image returned by the find_by or it will be an image we just created with Image.create

    # Add this image to the list of the user's saved images
    current_user.images << image

    render json: {success: true}
  end

  def index
    @images = Image.all
    respond_to do |format|
      format.html
      format.json {render json: @images}
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def my_saved_images
    render json: current_user.images
  end
end
