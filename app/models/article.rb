class Article < ActiveRecord::Base
	belongs_to :category

	validates_presence_of :title, :content

	scope :alphabetical, -> { ('title') }
    scope :active, -> { where(active: true) }
end
