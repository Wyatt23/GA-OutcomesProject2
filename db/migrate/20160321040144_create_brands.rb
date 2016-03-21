class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.text :body
      t.timestamps null: false
      t.references :student, index: true, foreign_key: true
    end
  end
end
