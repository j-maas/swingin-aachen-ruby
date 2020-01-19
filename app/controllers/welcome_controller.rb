class WelcomeController < ApplicationController
  def index
    @chico_occurrences = occurrence_preview("Chico Mendes")
    @sencillito_occurrences = occurrence_preview("Sencillito")
  end

  def occurrence_preview(event_name)
    Event.find_by(name: event_name).current_occurrences.limit(5)
  end

  def imprint
  end
end
