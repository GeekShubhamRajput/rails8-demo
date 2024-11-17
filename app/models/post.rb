class Post < ApplicationRecord
  belongs_to :user

  delegate :name, to: :user, prefix: true

  include PostsHelper

  def formatted_date
    formating_date(created_at)
  end
end
