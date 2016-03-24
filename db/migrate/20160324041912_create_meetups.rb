class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :meetup_name
      t.string :location
      t.string :date_of_meetup
      t.references :student, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
