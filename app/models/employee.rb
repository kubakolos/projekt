class Employee < ActiveRecord::Base
	has_many :employee_details
end
