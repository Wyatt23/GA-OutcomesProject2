class Student < ActiveRecord::Base
  has_many :brand_statements
  has_many :assignments
  has_many :companies
  has_many :meetups
end
