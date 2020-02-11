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

  def salary_over_500_k
    salary > 500_000
  end

end
