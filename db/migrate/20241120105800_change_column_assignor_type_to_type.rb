class ChangeColumnAssignorTypeToType < ActiveRecord::Migration[8.0]
  def change
    change_column :tasks, :assignor_type, :type 
  end
end