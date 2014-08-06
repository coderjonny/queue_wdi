class TurnsController < ApplicationController

  def index
    @turns = Turn.all
  end

  def new
    @turn = Turn.new
  end

  def create
    @turn = Turn.create(params.require(:turn).permit(:name, :subject, :question))
    if @turn.save
      redirect_to turns_path
    else
      render 'new'
    end
  end
end
