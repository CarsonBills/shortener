class Link < ActiveRecord::Base
  validates_presence_of :original

  def to_param
    self.id.to_i.to_s(36)
  end
end
