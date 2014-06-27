class Project < ActiveRecord::Base
	validates :name, presence: true
	validates :code, presence: true
	validates :description, presence: true
	validates :billing, presence: true
	validates :start_date, presence: true
	validates :deadline, presence: true
	validates :end_date, presence: true
	validates :github_url, presence: true
	validates :status, presence: true
end