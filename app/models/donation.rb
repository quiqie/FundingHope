class Donation < ActiveRecord::Base
  attr_accessible :amount, :cause, :donor, :paid_out
  has_and_belongs_to :donor
  has_and_belongs_to :need
end
