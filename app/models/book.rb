class Book < ApplicationRecord
  belongs_to :author
  validates :name, presence: true
  validates :author_id, presence: true
end
