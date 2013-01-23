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

class Item < ActiveRecord::Base
  attr_accessible :grocery_id, :brand, :name, :unit_of_measurement, :unit_price, :price, :quantity

  belongs_to :grocery

  validates :brand, :presence => true
  validates :name, :presence => true
  validates :unit_of_measurement, :presence => true
  validates :price, :presence => true,
  					:numericality => true
  validates :quantity, :presence => true,
 					   :numericality => { :only_integer => true }
  validates :grocery_id, :presence => true

  before_save { |item| item.unit_price = item.price / item.quantity }
end
