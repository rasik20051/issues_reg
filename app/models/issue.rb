class Issue < ActiveRecord::Base
	belongs_to :project
validates :title,:description,:followers,presence: true
validates :title ,uniqueness: true
validates :description,length: {maximum: 140}
validates :description,length: {minimum: 10}

after_create :add_to_time_line

# before_save :strip_spaces_from_tags

private
def add_to_time_line
	Timeline.create!({content: "An issue was created",timelineable_id: id,timelineable_type:self.class.to_s})
	end

# def strip_spaces_from_tags
# 	self.tags.gsub! ', ' , ','
# end


end
 