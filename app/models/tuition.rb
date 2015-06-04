class Tuition < ActiveRecord::Base
	has_many :services
	has_one :tuition_status
end
