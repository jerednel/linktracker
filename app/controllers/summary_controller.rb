class SummaryController < ApplicationController
	def index
		#@director = params(['director'])
		@users = User.where('director = ?', params['director']) || @users = User.where('senior = ?', params['senior'])

	end
end
