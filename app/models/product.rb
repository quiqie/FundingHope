class Product < ActiveRecord::Base
  validates_presence_of :name, :price
  has_many :donations

  def amount_fulfilled
    @amount = 0
    donations.each do |donation|
        @amount = @amount + donation.amount
    end
    return @amount
  end
end
