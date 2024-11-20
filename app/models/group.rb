class Group < ApplicationRecord
  has_many :group_members
  has_many :users, through: :group_members
  has_many :tasks, as: :assignor, class_name: 'Task'

  validates :name, presence: true

  def add_group_member(user)
    group_members.create(user: user)
  end

  def remove_member(user)
    group_members.where(user: user).destroy_all
  end
end
