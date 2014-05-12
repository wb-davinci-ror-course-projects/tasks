class Task < ActiveRecord::Base

#   geocoded_by :ip_address
#   after_validation :geocode, :if => lambda{ |obj| obj.ip_address_changed? }
end
