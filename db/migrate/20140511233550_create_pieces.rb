class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer :code
      t.string :name
      t.integer :type_id
      t.integer :width
      t.integer :length
      t.integer :height

      t.timestamps
    end
  end
end
