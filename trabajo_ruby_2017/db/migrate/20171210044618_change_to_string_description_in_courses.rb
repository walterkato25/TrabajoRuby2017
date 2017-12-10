class ChangeToStringDescriptionInCourses < ActiveRecord::Migration[5.0]
  drop_table :courses
  def change

  	create_table :courses do |t|
      t.integer :year, :limit => 4
      t.string :description, :limit => 255

      t.timestamps
    end
  end
end
