class Project < ActiveRecord::Base
	has_many :issues
validates :name,:description,presence: true
validates :name ,uniqueness: true
validates :description,length: {maximum: 140}
validates :description,length: {minimum: 10}
end
