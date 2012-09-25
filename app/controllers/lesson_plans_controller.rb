class LessonPlansController < ApplicationController
  def index
    @plans = LessonPlan.all
  end

  def show
    @plan = LessonPlan.find(params[:id])
  end

  def edit
    @plan = LessonPlan.find(params[:id])
  end

  def update
    @plan = LessonPlan.find(params[:id])    
    @plan.lesson_mappings.build(params[:lesson_mapping])

    if @plan.update_attributes(params[:lesson_plan])
      redirect_to lesson_plan_path(@plan)
    else
      render "edit"
    end
  end
end
