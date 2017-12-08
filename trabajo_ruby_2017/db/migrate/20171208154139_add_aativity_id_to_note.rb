class AddAativityIdToNote < ActiveRecord::Migration[5.0]
  def change
  	add_reference :notes, :activity, index: true
    add_foreign_key :notes, :activities
  end
end
