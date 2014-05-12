class CreateInventoryPieces < ActiveRecord::Migration
  def change
    create_table :inventory_pieces do |t|
      t.integer :inventory_id
      t.integer :colored_piece_id
      t.integer :quantity

      t.timestamps
    end
  end
end
