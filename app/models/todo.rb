class Todo < ApplicationRecord
	enum status: { draft: 0, inprogress: 1, completed: 2 }
	
	validates :title, presence: true

	default_scope { order(created_at: :desc) }
end
