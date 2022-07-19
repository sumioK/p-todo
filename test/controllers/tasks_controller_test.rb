require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  
  test "the truth" do
    assert true
  end

  test "sleep1" do
    sleep 3
    assert true
  end
  
  test "sleep2" do
    sleep 3
    assert true
  end

  test "sleep3" do
    sleep 3
    assert true
  end

  test "sleep4" do
    sleep 3
    assert true
  end
  
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference("Task.count") do
      post tasks_url, params: { task: { content: @task.content } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { content: @task.content } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference("Task.count", -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
