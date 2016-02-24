class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.float :amount
      t.integer :project_id
      t.integer :user_id
      t.integer :award_id

      t.timestamps null: false
    end
  end
end
