class AddEmailToTaskList < ActiveRecord::Migration[6.0]
  def change
    add_column :task_lists, :email_id, :string
  end
end
