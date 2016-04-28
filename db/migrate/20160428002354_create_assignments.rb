class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :instructions
      t.date :due_date
      t.string :ga_focus

      t.timestamps null: false
    end
  end
end
