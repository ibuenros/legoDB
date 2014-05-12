# == Schema Information
#
# Table name: colored_pieces
#
#  id         :integer          not null, primary key
#  code       :integer
#  piece_id   :integer
#  color_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class ColoredPiece < ActiveRecord::Base

  belongs_to :color
  belongs_to :piece
  has_many :inventory_pieces

end
