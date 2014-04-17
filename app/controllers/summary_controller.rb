class SummaryController < ApplicationController
	def index
		#@director = params(['director'])
		@users = User.where('director = ?', params['director']) 
		@senior_users = User.where('senior = ?', params['senior'])
		@seniors = User.select(:senior).uniq
		@directors = User.select(:director).uniq
	end
end
