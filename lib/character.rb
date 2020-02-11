class Character

  def initialize(attributes)
    @attributes = attributes
  end

  def name
    @attributes[:name]
  end

  def actor
    @attributes[:actor]
  end

  def salary
    @attributes[:salary]
  end

end
