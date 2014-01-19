require 'test_helper'

class TTypesControllerTest < ActionController::TestCase
  setup do
    @t_type = t_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_type" do
    assert_difference('TType.count') do
      post :create, t_type: { children: @t_type.children, extras: @t_type.extras, fields: @t_type.fields, name: @t_type.name, priority: @t_type.priority, relations: @t_type.relations }
    end

    assert_redirected_to t_type_path(assigns(:t_type))
  end

  test "should show t_type" do
    get :show, id: @t_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_type
    assert_response :success
  end

  test "should update t_type" do
    patch :update, id: @t_type, t_type: { children: @t_type.children, extras: @t_type.extras, fields: @t_type.fields, name: @t_type.name, priority: @t_type.priority, relations: @t_type.relations }
    assert_redirected_to t_type_path(assigns(:t_type))
  end

  test "should destroy t_type" do
    assert_difference('TType.count', -1) do
      delete :destroy, id: @t_type
    end

    assert_redirected_to t_types_path
  end
end
