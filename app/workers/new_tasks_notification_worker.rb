class NewTasksNotificationWorker
  include Sidekiq::Worker

  def perform(task_id, priority)
    task = TaskList.find(task_id)
    if priority > 1
      2.times do NewTaskMailer.with(task: task).new_task.deliver_now end
    else
      NewTaskMailer.with(task: task).new_task.deliver_now
    end
  end

end
