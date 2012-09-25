class LessonsController < ApplicationController
  def create
    @lesson = Lesson.create(params[:lesson]) 
  end
end
