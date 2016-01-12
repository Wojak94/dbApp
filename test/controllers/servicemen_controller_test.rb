require 'test_helper'

class ServicemenControllerTest < ActionController::TestCase
  setup do
    @serviceman = servicemen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicemen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serviceman" do
    assert_difference('Serviceman.count') do
      post :create, serviceman: { status: @serviceman.status }
    end

    assert_redirected_to serviceman_path(assigns(:serviceman))
  end

  test "should show serviceman" do
    get :show, id: @serviceman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serviceman
    assert_response :success
  end

  test "should update serviceman" do
    patch :update, id: @serviceman, serviceman: { status: @serviceman.status }
    assert_redirected_to serviceman_path(assigns(:serviceman))
  end

  test "should destroy serviceman" do
    assert_difference('Serviceman.count', -1) do
      delete :destroy, id: @serviceman
    end

    assert_redirected_to servicemen_path
  end
end
