class Post < ApplicationRecord
  belongs_to :user, optional: true

  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 2}

  def formatted_created_at
    created_at.strftime('%d-%m-%Y %H:%M:%S')
  end
end
