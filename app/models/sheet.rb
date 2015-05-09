class Sheet < ActiveRecord::Base
	belongs_to :client 
	belongs_to :activity
	
	validates :client_id, presence: true
	validates :activity_id, presence: true

def client_name
	client.try(:name)
end

def client_name=(name)
	self.client = Client.find_by_name(name) if name.present?
	
end


end
