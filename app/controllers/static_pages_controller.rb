class StaticPagesController < ApplicationController
  @@flickr = Flickr.new(Figaro.env.flickr_api_key, Figaro.env.flickr_secret)
  def index
    unless params[:user_id].nil?
      @photos = @@flickr.people.getPublicPhotos user_id: params[:user_id]
    end
  end
end
