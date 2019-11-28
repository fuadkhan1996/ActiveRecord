class Book < ApplicationRecord
  belongs_to :author
  validates :author, :book_name, presence: true
end
