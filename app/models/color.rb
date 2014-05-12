# == Schema Information
#
# Table name: colors
#
#  id         :integer          not null, primary key
#  code       :integer
#  name       :string(255)
#  rgb        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Color < ActiveRecord::Base

  has_many :colored_pieces

end
