class CreateBrandStatements < ActiveRecord::Migration
  def change
    create_table :brand_statements do |t|
      t.text :body
      t.timestamps null: false
      t.references :student, index: true, foreign_key: true
    end
  end
end
