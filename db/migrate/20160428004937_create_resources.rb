class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :topic
      t.string :url
      t.string :ga_focus

      t.timestamps null: false
    end
  end
end
