require 'test_helper'

class StudiesControllerTest < ActionController::TestCase
  setup do
    @study = studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study" do
    assert_difference('Study.count') do
      post :create, study: { category: @study.category, completed: @study.completed, deadline: @study.deadline, done_for_today: @study.done_for_today, links: @study.links, material: @study.material, name: @study.name, next_up: @study.next_up, notes: @study.notes, priority: @study.priority }
    end

    assert_redirected_to study_path(assigns(:study))
  end

  test "should show study" do
    get :show, id: @study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study
    assert_response :success
  end

  test "should update study" do
    patch :update, id: @study, study: { category: @study.category, completed: @study.completed, deadline: @study.deadline, done_for_today: @study.done_for_today, links: @study.links, material: @study.material, name: @study.name, next_up: @study.next_up, notes: @study.notes, priority: @study.priority }
    assert_redirected_to study_path(assigns(:study))
  end

  test "should destroy study" do
    assert_difference('Study.count', -1) do
      delete :destroy, id: @study
    end

    assert_redirected_to studies_path
  end
end
