require "application_system_test_case"

class TaskListsTest < ApplicationSystemTestCase
  setup do
    @task_list = task_lists(:one)
  end

  test "visiting the index" do
    visit task_lists_url
    assert_selector "h1", text: "Task Lists"
  end

  test "creating a Task list" do
    visit task_lists_url
    click_on "New Task List"

    fill_in "Priority", with: @task_list.priority
    fill_in "Task", with: @task_list.task
    click_on "Create Task list"

    assert_text "Task list was successfully created"
    click_on "Back"
  end

  test "updating a Task list" do
    visit task_lists_url
    click_on "Edit", match: :first

    fill_in "Priority", with: @task_list.priority
    fill_in "Task", with: @task_list.task
    click_on "Update Task list"

    assert_text "Task list was successfully updated"
    click_on "Back"
  end

  test "destroying a Task list" do
    visit task_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task list was successfully destroyed"
  end
end
