class Link < ActiveRecord::Base
  def to_param
    self.id.to_i.to_s(36)
  end
end
