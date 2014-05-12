require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { category: @task.category, comm_info: @task.comm_info, completed: @task.completed, contact: @task.contact, date_completed: @task.date_completed, deadline: @task.deadline, last_worked_on: @task.last_worked_on, links: @task.links, location: @task.location, name: @task.name, notes: @task.notes, priority: @task.priority, sub_category: @task.sub_category }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { category: @task.category, comm_info: @task.comm_info, completed: @task.completed, contact: @task.contact, date_completed: @task.date_completed, deadline: @task.deadline, last_worked_on: @task.last_worked_on, links: @task.links, location: @task.location, name: @task.name, notes: @task.notes, priority: @task.priority, sub_category: @task.sub_category }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
