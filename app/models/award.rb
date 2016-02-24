class Award < ActiveRecord::Base
  belongs_to :project
  belongs_to :pledge
end
