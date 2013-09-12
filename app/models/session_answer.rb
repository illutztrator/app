class SessionAnswer < ActiveRecord::Base
	has_many	:answers
	has_many	:sessions
end
