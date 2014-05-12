class PieceTypesController < ApplicationController
  before_action :set_piece_type, only: [:show, :edit, :update, :destroy]

  # GET /piece_types
  # GET /piece_types.json
  def index
    @piece_types = PieceType.all
  end

  # GET /piece_types/1
  # GET /piece_types/1.json
  def show
  end

  # GET /piece_types/new
  def new
    @piece_type = PieceType.new
  end

  # GET /piece_types/1/edit
  def edit
  end

  # POST /piece_types
  # POST /piece_types.json
  def create
    @piece_type = PieceType.new(piece_type_params)

    respond_to do |format|
      if @piece_type.save
        format.html { redirect_to @piece_type, notice: 'Piece type was successfully created.' }
        format.json { render :show, status: :created, location: @piece_type }
      else
        format.html { render :new }
        format.json { render json: @piece_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece_types/1
  # PATCH/PUT /piece_types/1.json
  def update
    respond_to do |format|
      if @piece_type.update(piece_type_params)
        format.html { redirect_to @piece_type, notice: 'Piece type was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece_type }
      else
        format.html { render :edit }
        format.json { render json: @piece_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece_types/1
  # DELETE /piece_types/1.json
  def destroy
    @piece_type.destroy
    respond_to do |format|
      format.html { redirect_to piece_types_url, notice: 'Piece type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_type
      @piece_type = PieceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece_type_params
      params.require(:piece_type).permit(:name)
    end
end
