require 'test_helper'

class PieceTypesControllerTest < ActionController::TestCase
  setup do
    @piece_type = piece_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece_type" do
    assert_difference('PieceType.count') do
      post :create, piece_type: { name: @piece_type.name }
    end

    assert_redirected_to piece_type_path(assigns(:piece_type))
  end

  test "should show piece_type" do
    get :show, id: @piece_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece_type
    assert_response :success
  end

  test "should update piece_type" do
    patch :update, id: @piece_type, piece_type: { name: @piece_type.name }
    assert_redirected_to piece_type_path(assigns(:piece_type))
  end

  test "should destroy piece_type" do
    assert_difference('PieceType.count', -1) do
      delete :destroy, id: @piece_type
    end

    assert_redirected_to piece_types_path
  end
end
