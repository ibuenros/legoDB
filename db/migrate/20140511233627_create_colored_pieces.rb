class CreateColoredPieces < ActiveRecord::Migration
  def change
    create_table :colored_pieces do |t|
      t.integer :code
      t.integer :piece_id
      t.integer :color_id

      t.timestamps
    end
  end
end
