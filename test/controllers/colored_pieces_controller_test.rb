require 'test_helper'

class ColoredPiecesControllerTest < ActionController::TestCase
  setup do
    @colored_piece = colored_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colored_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colored_piece" do
    assert_difference('ColoredPiece.count') do
      post :create, colored_piece: { code: @colored_piece.code, color_id: @colored_piece.color_id, piece_id: @colored_piece.piece_id }
    end

    assert_redirected_to colored_piece_path(assigns(:colored_piece))
  end

  test "should show colored_piece" do
    get :show, id: @colored_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colored_piece
    assert_response :success
  end

  test "should update colored_piece" do
    patch :update, id: @colored_piece, colored_piece: { code: @colored_piece.code, color_id: @colored_piece.color_id, piece_id: @colored_piece.piece_id }
    assert_redirected_to colored_piece_path(assigns(:colored_piece))
  end

  test "should destroy colored_piece" do
    assert_difference('ColoredPiece.count', -1) do
      delete :destroy, id: @colored_piece
    end

    assert_redirected_to colored_pieces_path
  end
end
