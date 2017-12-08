class AddCoursIrToActivity < ActiveRecord::Migration[5.0]
  def change
  	add_reference :activities, :course, index: true
    add_foreign_key :activities, :courses
  end
end
