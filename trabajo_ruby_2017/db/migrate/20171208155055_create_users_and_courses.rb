class CreateUsersAndCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :users_and_courses do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :course, index: true
    end
  end
end
