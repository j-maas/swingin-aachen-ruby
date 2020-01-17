class Event < ApplicationRecord
  has_many :occurrences

  validates :name, presence: true
end
