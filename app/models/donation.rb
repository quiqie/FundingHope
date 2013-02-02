class Donation < ActiveRecord::Base
  attr_accessible :amount, :product_id, :organization_id, :paid_out
  belongs_to :organization
  belongs_to :product
end
