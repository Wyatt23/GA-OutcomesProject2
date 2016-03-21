class Brand < ActiveRecord::Base
  default_scope { order('updated_at DESC') }
  belongs_to :student
  has_many :user_reviews
end
