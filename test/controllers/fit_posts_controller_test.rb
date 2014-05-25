require 'test_helper'

class FitPostsControllerTest < ActionController::TestCase
  setup do
    @fit_post = fit_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fit_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fit_post" do
    assert_difference('FitPost.count') do
      post :create, fit_post: { accomplishment: @fit_post.accomplishment, breakfast: @fit_post.breakfast, brk_cals: @fit_post.brk_cals, date: @fit_post.date, dinner: @fit_post.dinner, dinner_cals: @fit_post.dinner_cals, energy: @fit_post.energy, exercise: @fit_post.exercise, focus: @fit_post.focus, lunch: @fit_post.lunch, lunch_cals: @fit_post.lunch_cals, model_day: @fit_post.model_day, notes: @fit_post.notes, snacks: @fit_post.snacks, snacks: @fit_post.snacks, water_extract_64oz: @fit_post.water_extract_64oz, weight: @fit_post.weight }
    end

    assert_redirected_to fit_post_path(assigns(:fit_post))
  end

  test "should show fit_post" do
    get :show, id: @fit_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fit_post
    assert_response :success
  end

  test "should update fit_post" do
    patch :update, id: @fit_post, fit_post: { accomplishment: @fit_post.accomplishment, breakfast: @fit_post.breakfast, brk_cals: @fit_post.brk_cals, date: @fit_post.date, dinner: @fit_post.dinner, dinner_cals: @fit_post.dinner_cals, energy: @fit_post.energy, exercise: @fit_post.exercise, focus: @fit_post.focus, lunch: @fit_post.lunch, lunch_cals: @fit_post.lunch_cals, model_day: @fit_post.model_day, notes: @fit_post.notes, snacks: @fit_post.snacks, snacks: @fit_post.snacks, water_extract_64oz: @fit_post.water_extract_64oz, weight: @fit_post.weight }
    assert_redirected_to fit_post_path(assigns(:fit_post))
  end

  test "should destroy fit_post" do
    assert_difference('FitPost.count', -1) do
      delete :destroy, id: @fit_post
    end

    assert_redirected_to fit_posts_path
  end
end
