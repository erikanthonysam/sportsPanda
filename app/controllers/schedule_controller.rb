class ScheduleController < ApplicationController
  
  def index
    @games = Game.all.sort! { |a,b| a.date <=> b.date }
  end

end
