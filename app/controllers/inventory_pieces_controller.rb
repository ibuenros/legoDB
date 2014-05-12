class InventoryPiecesController < ApplicationController
  before_action :set_inventory_piece, only: [:show, :edit, :update, :destroy]

  # GET /inventory_pieces
  # GET /inventory_pieces.json
  def index
    @inventory_pieces = InventoryPiece.all
  end

  # GET /inventory_pieces/1
  # GET /inventory_pieces/1.json
  def show
  end

  # GET /inventory_pieces/new
  def new
    @inventory_piece = InventoryPiece.new
  end

  # GET /inventory_pieces/1/edit
  def edit
  end

  # POST /inventory_pieces
  # POST /inventory_pieces.json
  def create
    @inventory_piece = InventoryPiece.new(inventory_piece_params)

    respond_to do |format|
      if @inventory_piece.save
        format.html { redirect_to @inventory_piece, notice: 'Inventory piece was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_piece }
      else
        format.html { render :new }
        format.json { render json: @inventory_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_pieces/1
  # PATCH/PUT /inventory_pieces/1.json
  def update
    respond_to do |format|
      if @inventory_piece.update(inventory_piece_params)
        format.html { redirect_to @inventory_piece, notice: 'Inventory piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_piece }
      else
        format.html { render :edit }
        format.json { render json: @inventory_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_pieces/1
  # DELETE /inventory_pieces/1.json
  def destroy
    @inventory_piece.destroy
    respond_to do |format|
      format.html { redirect_to inventory_pieces_url, notice: 'Inventory piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_piece
      @inventory_piece = InventoryPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_piece_params
      params.require(:inventory_piece).permit(:inventory_id, :colored_piece_id, :quantity)
    end
end
