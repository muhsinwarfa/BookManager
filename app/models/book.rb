class Book < ActiveRecord::Base
	belongs_to :publisher
	has_many :book_authors
	has_many :authors, through: :book_authors

	validates :title , presence: true
	validates :year_published , numericality: {only_integer}
	
end
