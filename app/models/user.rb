class User < ApplicationRecord
  has_secure_password
  
  has_many :sessions, dependent: :destroy
  has_many :posts
  has_many :orders

  has_many :assign_tasks, class_name: 'Task', foreign_key: :assignee_id 
  has_many :assignor_tasks, as: :assignor, class_name: 'Task'

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
