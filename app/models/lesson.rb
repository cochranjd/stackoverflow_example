class Lesson < ActiveRecord::Base
  attr_accessible :title
  has_many :lesson_mappings
  has_many :lesson_plans, :through => :lesson_mappings
end
