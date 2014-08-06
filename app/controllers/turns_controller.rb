class TurnsController < ApplicationController

  def index
    @turns = Turn.all
    name_instructor
  end

  def name_instructor
    teachers = [
      "Richard, Mel and Andrew",
      "Jonny, Matthias, and Evan",
      "Lorin, Mer, and Mel",
      "Alfonso, Evan, and Andrew"]

    t = Time.now.strftime("%A")
    case t
    when "Monday"
      @office_hours_helpers = "#{teachers[0]}!" 
    when "Tuesday"
      @office_hours_helpers = "#{teachers[1]}!"
    when "Wednesday"
      @office_hours_helpers = "#{teachers[2]}!"
    when "Thursday"
      @office_hours_helpers = "#{teachers[3]}!"
    end
  end
end
