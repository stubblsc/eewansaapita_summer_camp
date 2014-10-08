class YearlyInfo < ActiveRecord::Base
	belongs_to :user

	validates :year, :comments, presence: true
end
