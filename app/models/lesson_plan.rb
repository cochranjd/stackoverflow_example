class LessonPlan < ActiveRecord::Base
  attr_accessible :name, :lesson_mappings_attributes
  has_many :lesson_mappings
  has_many :lessons, :through => :lesson_mappings

  accepts_nested_attributes_for :lesson_mappings, allow_destroy: true
end
