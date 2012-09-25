class LessonMapping < ActiveRecord::Base
  attr_accessible :lesson_id, :lesson_plan_id

  belongs_to :lesson
  belongs_to :lesson_plan
end
