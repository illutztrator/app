class Setitem < ActiveRecord::Base

	has_many :questions
	has_many :texts
	has_many :groups

end
