class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :title
      t.text :description
      t.float :min_amount
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
