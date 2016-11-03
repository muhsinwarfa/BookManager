class Publisher < ActiveRecord::Base
	has_many :books
	
	validates :name, presence: true
	default_scope { order('name') }

end
