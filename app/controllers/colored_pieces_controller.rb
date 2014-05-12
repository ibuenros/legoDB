class ColoredPiecesController < ApplicationController
  before_action :set_colored_piece, only: [:show, :edit, :update, :destroy]

  # GET /colored_pieces
  # GET /colored_pieces.json
  def index
    @colored_pieces = ColoredPiece.all
  end

  # GET /colored_pieces/1
  # GET /colored_pieces/1.json
  def show
  end

  # GET /colored_pieces/new
  def new
    @colored_piece = ColoredPiece.new
  end

  # GET /colored_pieces/1/edit
  def edit
  end

  # POST /colored_pieces
  # POST /colored_pieces.json
  def create
    @colored_piece = ColoredPiece.new(colored_piece_params)

    respond_to do |format|
      if @colored_piece.save
        format.html { redirect_to @colored_piece, notice: 'Colored piece was successfully created.' }
        format.json { render :show, status: :created, location: @colored_piece }
      else
        format.html { render :new }
        format.json { render json: @colored_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colored_pieces/1
  # PATCH/PUT /colored_pieces/1.json
  def update
    respond_to do |format|
      if @colored_piece.update(colored_piece_params)
        format.html { redirect_to @colored_piece, notice: 'Colored piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @colored_piece }
      else
        format.html { render :edit }
        format.json { render json: @colored_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colored_pieces/1
  # DELETE /colored_pieces/1.json
  def destroy
    @colored_piece.destroy
    respond_to do |format|
      format.html { redirect_to colored_pieces_url, notice: 'Colored piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colored_piece
      @colored_piece = ColoredPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colored_piece_params
      params.require(:colored_piece).permit(:code, :piece_id, :color_id)
    end
end
