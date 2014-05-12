# == Schema Information
#
# Table name: pieces
#
#  id         :integer          not null, primary key
#  code       :integer
#  name       :string(255)
#  type_id    :integer
#  width      :integer
#  length     :integer
#  height     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Piece < ActiveRecord::Base

  belongs_to :piece_type, foreign_key: :type_id
  has_many :colored_pieces

end
