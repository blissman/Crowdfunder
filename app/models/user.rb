class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :pledges
  has_many :projects
end
