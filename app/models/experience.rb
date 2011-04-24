class Experience < ActiveRecord::Base
  validates_presence_of :company, :title, :description
end
