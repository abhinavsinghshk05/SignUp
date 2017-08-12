class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
#validates_date :DOB, :before => lambda { Date.current }
end
