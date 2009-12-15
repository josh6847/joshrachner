class Inquiry < ActiveRecord::Base
  validates_presence_of :name, :company, :email, :content
  validates_format_of   :email,
                        :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message    => 'invalid. example: name@domain.com',
                        :unless     => Proc.new{ |inquiry| inquiry.email.blank? }
end
