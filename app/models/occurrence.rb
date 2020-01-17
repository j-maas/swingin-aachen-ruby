class Occurrence < ApplicationRecord
  belongs_to :event

  validates :event, presence: true
  validates :date, presence: true
  validates :beginners, presence: true

  # Set default values that are available in forms.
  after_initialize do
    if self.new_record?
      self.beginners = false
    end
  end
end
