require 'test_helper'

class TuitionStatusesControllerTest < ActionController::TestCase
  setup do
    @tuition_status = tuition_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tuition_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tuition_status" do
    assert_difference('TuitionStatus.count') do
      post :create, tuition_status: { id: @tuition_status.id, status: @tuition_status.status }
    end

    assert_redirected_to tuition_status_path(assigns(:tuition_status))
  end

  test "should show tuition_status" do
    get :show, id: @tuition_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tuition_status
    assert_response :success
  end

  test "should update tuition_status" do
    patch :update, id: @tuition_status, tuition_status: { id: @tuition_status.id, status: @tuition_status.status }
    assert_redirected_to tuition_status_path(assigns(:tuition_status))
  end

  test "should destroy tuition_status" do
    assert_difference('TuitionStatus.count', -1) do
      delete :destroy, id: @tuition_status
    end

    assert_redirected_to tuition_statuses_path
  end
end
