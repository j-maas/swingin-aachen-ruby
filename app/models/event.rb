class Event < ApplicationRecord
  has_many :occurrences

  validates :name, presence: true, uniqueness: true

  def current_occurrences
    occurrences
        .where('date >= ?', Date.today)
        .select(:date, :beginners)
        .order(date: :asc)
  end
end
