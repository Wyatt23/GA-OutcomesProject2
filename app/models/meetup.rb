class Meetup < ActiveRecord::Base
  default_scope { order('updated_at DESC') }
  belongs_to :student
end
