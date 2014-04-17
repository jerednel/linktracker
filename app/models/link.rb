class Link < ActiveRecord::Base

	belongs_to :user
  class << self
  	def current_user=(user)
  		Thread.current[:current_user] = user
  	end

  	def current_user
  		Thread.current[:current_user]
  	end
  end
		def self.import(file, user_id)
			CSV.foreach(file.path, headers: true) do |row|
				Link.create! row.to_hash.merge(user_id: user_id)
			end
		end
end
