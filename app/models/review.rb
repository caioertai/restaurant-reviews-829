class Review < ApplicationRecord
  belongs_to :restaurant

  # Callbacks
  before_validation :strip_content

  validates :content, presence: true
  validates :content, length: { minimum: 10, message: "too short. Stop being lazy!" }

  private

  def strip_content
    self.content = content.strip
  end
end
