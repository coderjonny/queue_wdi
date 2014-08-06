class TurnsController < ApplicationController

  def index
    @turns = Turn.all
  end

end
