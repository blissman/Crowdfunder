class AddCurrentTotalToProject < ActiveRecord::Migration
  def change
    add_column :projects, :current_total, :float
  end
end
