class ListEntry < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1 }
  belongs_to :list
end
