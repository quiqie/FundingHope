class Donation < ActiveRecord::Base
  attr_accessible :amount, :cause, :donor, :paid_out
  belongs_to :donor
  has_one :need
end
