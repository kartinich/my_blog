class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 2}

  def formatted_created_at
    created_at.strftime('%Y-%M-%D %H:%M:%S')
  end
end
