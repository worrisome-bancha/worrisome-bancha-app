class ListEntry < ApplicationRecord
  validates :description, presence: true, length: { minimum: 1 }
  belongs_to :list
end
