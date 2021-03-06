class AlbumsController < ApplicationController
  before_action :set_album, only: %i[show edit update destroy]
  # enable streaming responses
  include ActionController::Streaming
  # enable zipline
  include Zipline

  # GET /albums
  # GET /albums.json
  def index
    if !params[:category].nil?
      @albums = Album.where(category: params[:category])
    else
      @albums = Album.all
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show

  end

  def download
     @photos = Album.find(params[:album_id]).photos.all
     @album = Album.find(params[:album_id])
    files = @photos.map{ |photo| [photo.image, "#{photo.title}.png"]}
    zipline(files, "#{@album.title}.zip")
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
    #
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, success: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, success: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, success: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_album
    @album = Album.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def album_params
    params.require(:album).permit(:title, :location, :cover_photo, :category)
  end
end
