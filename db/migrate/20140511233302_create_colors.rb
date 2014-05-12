class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.integer :code
      t.string :name
      t.string :rgb

      t.timestamps
    end
  end
end
