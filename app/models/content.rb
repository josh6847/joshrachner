class Content < ActiveRecord::Base
  named_scope :get_welcome, :conditions => "location = 'welcome'"
  named_scope :get_employment, :conditions => "location = 'employment'"
  named_scope :get_mission, :conditions => "location = 'mission'"
  named_scope :get_technologies, :conditions => "location = 'technology'"
end
