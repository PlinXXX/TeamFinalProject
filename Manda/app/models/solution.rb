class Solution < ApplicationRecord
	has_one :question
	has_one :description, through: :question
end
