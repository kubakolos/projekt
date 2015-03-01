class Employee < ActiveRecord::Base
	has_one :employee_detail
end
