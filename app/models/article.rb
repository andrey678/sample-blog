class Article < ApplicationRecord
  has_many :comments
   validates :title, presence: true
  validates :text, presence: true

def subject
  title
end
 def last_comment
  comments.last
  end
end
