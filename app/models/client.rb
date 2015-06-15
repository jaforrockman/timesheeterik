class Client < ActiveRecord::Base

	has_many :sheets

	def self.import(file)
		::CSV.foreach(file.path, headers: true) do |row|
			Client.create! row.to_hash
		end
	end
end
