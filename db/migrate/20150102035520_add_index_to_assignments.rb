class AddIndexToAssignments < ActiveRecord::Migration
  def change
   add_index :assignments, [:user_id, :role_id], unique: true
  end
end
