class List < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1 }
  has_many :ListEntries
end
