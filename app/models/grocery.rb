# == Schema Information
#
# Table name: groceries
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Grocery < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true
end
