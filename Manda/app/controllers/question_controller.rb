class QuestionController < ApplicationController
	def index
		@question = Question.all
		@number = 1
	end
	def show
	end
end
