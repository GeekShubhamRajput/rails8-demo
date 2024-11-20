class Task < ApplicationRecord
  belongs_to :assignor, polymorphic: true
  belongs_to :assignee, class_name: 'User', foreign_key: :assignee_id, optional: true
end
