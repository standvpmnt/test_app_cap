require 'test_helper'

class TaskListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_list = task_lists(:one)
  end

  test "should get index" do
    get task_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_task_list_url
    assert_response :success
  end

  test "should create task_list" do
    assert_difference('TaskList.count') do
      post task_lists_url, params: { task_list: { priority: @task_list.priority, task: @task_list.task } }
    end

    assert_redirected_to task_list_url(TaskList.last)
  end

  test "should show task_list" do
    get task_list_url(@task_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_list_url(@task_list)
    assert_response :success
  end

  test "should update task_list" do
    patch task_list_url(@task_list), params: { task_list: { priority: @task_list.priority, task: @task_list.task } }
    assert_redirected_to task_list_url(@task_list)
  end

  test "should destroy task_list" do
    assert_difference('TaskList.count', -1) do
      delete task_list_url(@task_list)
    end

    assert_redirected_to task_lists_url
  end
end
