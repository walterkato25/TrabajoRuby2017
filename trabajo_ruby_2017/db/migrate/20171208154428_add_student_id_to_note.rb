class AddStudentIdToNote < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :student, index: true
    add_foreign_key :notes, :students
  end
end
