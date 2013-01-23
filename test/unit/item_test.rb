# == Schema Information
#
# Table name: items
#
#  id                  :integer          not null, primary key
#  name                :string(255)      not null
#  brand               :string(255)      not null
#  unit_of_measurement :string(255)      not null
#  quantity            :integer          not null
#  unit_price          :decimal(, )
#  price               :decimal(, )      not null
#  grocery_id          :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
