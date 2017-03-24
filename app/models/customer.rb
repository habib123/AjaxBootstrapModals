class Customer < ActiveRecord::Base

 validates :first_name, presence: true, length: { minimum: 2 }
 validates :last_name, presence:true, length: {minimum: 2}

 geocoded_by :address   # can also be an IP address
 after_validation :geocode          # auto-fetch coordinates

 def address
	"#{street} #{zip} #{city}"
 end

end
