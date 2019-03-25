class Question < ApplicationRecord
	has_one :description
	has_one :solution, through: :description
end
