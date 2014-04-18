class Link < ActiveRecord::Base

	belongs_to :user

		def self.import(file, user_id)
			CSV.foreach(file.path, headers: true, :encoding => 'ISO-8859-1') do |row|
				Link.create! row.to_hash.merge(user_id: user_id)
			end
		end
end
