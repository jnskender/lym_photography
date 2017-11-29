class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_filter :set_album

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
     @photo = @album.photos.find params[:id]
  end

  # GET album/:id/photos/new
  def new
    @photo = @album.photos.new
  end

  # GET /photos/1/edit
  def edit
    @photo = @album.photos.find params[:id]
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @album.photos.new(photo_params)
    @photo.album = @album
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @album, success: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    @photo = @album.photos.find params[:id]

    if @photo.update_attributes params[:photo]
      redirect_to @album
    else
      render :edit
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, success: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def set_album
      @album = Album.find params[:album_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:title, :image)
    end
end
