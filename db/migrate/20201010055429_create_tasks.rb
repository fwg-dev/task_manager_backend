class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :deadline
      t.string :creator
      t.boolean :completion
      t.integer :project_id

      t.timestamps
    end
  end
end
