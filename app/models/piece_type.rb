# == Schema Information
#
# Table name: piece_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PieceType < ActiveRecord::Base

  has_many :pieces, foreign_key: :type_id

end
