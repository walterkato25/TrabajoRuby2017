class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :description
      t.date :date
      t.integer :minimum

      t.timestamps
    end
  end
end
