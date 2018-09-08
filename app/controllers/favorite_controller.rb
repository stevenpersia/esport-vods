class FavoriteController < ApplicationController
  def index
    @categories = Category.all
    @events = Event.where(fav: '1')
  end
end
