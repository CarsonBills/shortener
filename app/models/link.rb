class Link < ActiveRecord::Base
  validates :original, presence: true

  def to_param
    self.id.to_i.to_s(36)
  end

  def increment
    self.clicks += 1
  end
end
