class AddCourseIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :course, index: true
    add_foreign_key :students, :courses
  end
end
