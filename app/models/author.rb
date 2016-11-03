class Author < ActiveRecord::Base
	has_many :book_authors
	has_many :books, through: :book_authors

	validates :first_name, :last_name, presence: true
	default_scope { order ('last_name, first_name') }
end
