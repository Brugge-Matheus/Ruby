class CreateJoinTableStudentsCourses < ActiveRecord::Migration[7.1]
  def change
    create_join_table :students, :courses do |t|
      # t.index [:student_id, :course_id]
      # t.index [:course_id, :student_id]
    end
  end
end
