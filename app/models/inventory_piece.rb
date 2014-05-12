# == Schema Information
#
# Table name: inventory_pieces
#
#  id               :integer          not null, primary key
#  inventory_id     :integer
#  colored_piece_id :integer
#  quantity         :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class InventoryPiece < ActiveRecord::Base

  belongs_to :inventory
  belongs_to :colored_piece

end
