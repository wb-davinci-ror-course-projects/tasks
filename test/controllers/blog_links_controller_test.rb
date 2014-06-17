require 'test_helper'

class BlogLinksControllerTest < ActionController::TestCase
  setup do
    @blog_link = blog_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_link" do
    assert_difference('BlogLink.count') do
      post :create, blog_link: { category: @blog_link.category, description: @blog_link.description, link: @blog_link.link }
    end

    assert_redirected_to blog_link_path(assigns(:blog_link))
  end

  test "should show blog_link" do
    get :show, id: @blog_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_link
    assert_response :success
  end

  test "should update blog_link" do
    patch :update, id: @blog_link, blog_link: { category: @blog_link.category, description: @blog_link.description, link: @blog_link.link }
    assert_redirected_to blog_link_path(assigns(:blog_link))
  end

  test "should destroy blog_link" do
    assert_difference('BlogLink.count', -1) do
      delete :destroy, id: @blog_link
    end

    assert_redirected_to blog_links_path
  end
end
