class Product < ActiveRecord::Base
  has_many :donations
  validates_presence_of :name, :price
#  belongs_to :category
#  has_attatched_file :photo, :styles => { :small => "150x150>" },
#					:url => "/assets/products/:id/:style/:basename.:extension",
#					:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
#validates_attachment_presence :photo
#validates_attachment_size :photo, :less_than => 5.megabytes
#validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  def amount_fulfilled
    @amount = 0
    donations.each do |donation|
       	@amount = @amount + donation.amount

    end
    return @amount
  end
end
