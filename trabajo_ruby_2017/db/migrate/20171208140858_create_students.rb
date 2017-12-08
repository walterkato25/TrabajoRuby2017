class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :legajo, :limit => 7
      t.integer :dni, :limit => 8
      t.string :lastname, :limit => 50
      t.string :name, :limit => 50
      t.string :email

      t.timestamps
    end
  end
end
