class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :assignee_id, null: true
      t.integer :assignor_id
      t.string :assignor_type

      t.timestamps
    end
  end
end
