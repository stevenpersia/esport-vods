class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @events = Event.all
    @articles = Article.limit(1).order("created_at DESC")
    @supports = Support.all
  end

  def mentionslegales
    @categories = Category.all
  end

  def cookies
    @categories = Category.all
  end

end
