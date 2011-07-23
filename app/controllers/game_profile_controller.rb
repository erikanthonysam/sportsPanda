class GameProfileController < ApplicationController
  
  def bar_results
    @bar_results = Game.find(1).sportsbars
    @title = Game.find(1).name
  end
  

end
