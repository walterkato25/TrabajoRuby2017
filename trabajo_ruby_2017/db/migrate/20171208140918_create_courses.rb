class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :year, :limit => 4
      t.integer :description, :limit => 255

      t.timestamps
    end
  end
end
