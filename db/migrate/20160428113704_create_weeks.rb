class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :week_number
      t.string :title
      t.text :intro
      t.string :speakers
      t.text :goal
      t.string :themes
      t.text :notes

    end
  end
end

#  :week number :intro, :speakers, :goal, :themes, :notes
