class FitnessGoal < ApplicationRecord

  validates :description, presence: true
  validates :datetime, presence: true

  belongs_to :user
  after_initialize :init
  def init
    self.completed = false if (self.has_attribute? :completed) && self.completed.nil?
  end

end
