class Organization < ActiveRecord::Base
  has_many :agents
  attr_accessible :name
end
