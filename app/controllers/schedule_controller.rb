class ScheduleController < ApplicationController
  
  def index
    @games = Game.all
    
  end

end
