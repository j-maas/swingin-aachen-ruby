class Occurrence < ApplicationRecord
  belongs_to :event

  validates :event, presence: true
  validates :date, presence: true
  validates :beginners, inclusion: {in: [true, false]}

  # Set default values that are available in forms.
  after_initialize do
    self.beginners = false if self.new_record?
  end
end
