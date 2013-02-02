class Organization < ActiveRecord::Base
  has_many :agents
  attr_accessible :name
  has_many :donations
end
