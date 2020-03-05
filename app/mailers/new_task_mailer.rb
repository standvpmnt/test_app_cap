class NewTaskMailer < ApplicationMailer

  def new_task 
    @task_item = params[:task]

    mail(to: @task_item.email_id, subject: "New Task Created!")
  end


end
