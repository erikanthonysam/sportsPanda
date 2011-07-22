class PagesController < ApplicationController
  def home
  end

  def venues
    @venues = Sportsbar.all
  end

  def events
    @events = Game.all
  end

  def about
  end

end
