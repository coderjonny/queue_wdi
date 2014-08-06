class TurnsController < ApplicationController

  def index
    @turns = Turn.all
  end

  def new

  end

end
