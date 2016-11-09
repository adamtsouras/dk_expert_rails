class Article < ApplicationRecord
	validates :program, presence: true,
						length: { minimum: 5 }

	validates :title, presence: true,
						length: { minimum: 5 }

	validates :short_description, presence: true,
						length: { minimum: 5 }

	validates :long_description, presence: true,
						length: { minimum: 5 }


end
