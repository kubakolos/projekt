class Employee < ActiveRecord::Base
  belongs_to :user
	has_one :employee_detail
end
