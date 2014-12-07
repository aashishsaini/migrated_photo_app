class Project < ActiveRecord::Base
  belongs_to :imprint
  belongs_to :user
end
