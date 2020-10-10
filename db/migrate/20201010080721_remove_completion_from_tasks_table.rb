class RemoveCompletionFromTasksTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :completion, :boolean
  end
end
