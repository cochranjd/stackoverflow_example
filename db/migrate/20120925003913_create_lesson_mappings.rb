class CreateLessonMappings < ActiveRecord::Migration
  def change
    create_table :lesson_mappings do |t|
      t.integer :lesson_id
      t.integer :lesson_plan_id

      t.timestamps
    end
  end
end
