

class StaticPagesController < ApplicationController

  require 'flickr'

  def home
    flickr = Flickr.new ENV["FLICKR_API_KEY"], ENV["FLICKR_SHARED_SECRET"]
    id = params[:user_id]
    if id
        @photos = flickr.people.getPhotos(user_id: params[:user_id])
    end
    

  end

  def create
    @user = params[:user_id] if params[:user_id]
  end
end
