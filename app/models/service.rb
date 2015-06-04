class Service < ActiveRecord::Base
	belongs_to :tuition
	has_one :service_type
end
