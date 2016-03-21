class CoachingController < ApplicationController
	def answer
		ask
		if @question.include?("?")
			@answer = "Silly question, get dressed and go to work!"
		elsif @question.eql?("I am going to work right now!")
			@answer = "Good, hurry up!"
		else
			@answer = "I don't care, get dressed and go to work!"
		end
	end

	def ask
		@question = params[:query]
	end
end
