class Todo < ApplicationRecord
	validates_presence_of :title, :due_date
	validates :title, length: { maximum: 20 }

end
