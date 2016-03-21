class Student < ActiveRecord::Base
  has_many :brands
  has_many :assignments
  has_many :companies
  has_many :meetups
end
