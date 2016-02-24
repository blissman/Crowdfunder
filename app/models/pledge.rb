class Pledge < ActiveRecord::Base
  belongs_to :user
  has_one :award
  belongs_to :project
end
