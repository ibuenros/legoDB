# == Schema Information
#
# Table name: inventories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  piece_count :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Inventory < ActiveRecord::Base

  has_many :inventory_pieces

end
