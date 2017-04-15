# Base class for database records
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
