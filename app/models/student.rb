class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def isActive
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def activate
    self.active ? self.active = false : self.active = true
  end
end
