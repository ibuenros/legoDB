require 'test_helper'

class InventoryPiecesControllerTest < ActionController::TestCase
  setup do
    @inventory_piece = inventory_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_piece" do
    assert_difference('InventoryPiece.count') do
      post :create, inventory_piece: { colored_piece_id: @inventory_piece.colored_piece_id, inventory_id: @inventory_piece.inventory_id, quantity: @inventory_piece.quantity }
    end

    assert_redirected_to inventory_piece_path(assigns(:inventory_piece))
  end

  test "should show inventory_piece" do
    get :show, id: @inventory_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_piece
    assert_response :success
  end

  test "should update inventory_piece" do
    patch :update, id: @inventory_piece, inventory_piece: { colored_piece_id: @inventory_piece.colored_piece_id, inventory_id: @inventory_piece.inventory_id, quantity: @inventory_piece.quantity }
    assert_redirected_to inventory_piece_path(assigns(:inventory_piece))
  end

  test "should destroy inventory_piece" do
    assert_difference('InventoryPiece.count', -1) do
      delete :destroy, id: @inventory_piece
    end

    assert_redirected_to inventory_pieces_path
  end
end
