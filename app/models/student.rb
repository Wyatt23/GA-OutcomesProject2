class Student < ActiveRecord::Base
  has_one :brand_statement
  has_many :assignments
  has_many :companies
  has_many :meetups
  belongs_to :oc_group_leader
  has_many :appointments
end
