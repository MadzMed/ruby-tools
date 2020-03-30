class Vector

  attr_reader :vector

  def initialize(xA, xB, yA, yB)
    @vector = vectorize(xA, xB, yA, yB)
  end

  def vectorize(xA, xB, yA, yB)
    [xB - xA, yB - yA]
  end

  def norm
    Math.sqrt(@vector[0]**2 + @vector[1]**2)
  end

  def scalar_product(other_vector)
    @vector[0] * other_vector[0] + @vector[1] * other_vector[1]
  end

  def angle(other_vector)
    Math.acos(scalar_product(other_vector) / (norm * other_vector.norm))
  end

  def orthogonal_projection(other_vector)
    other_vector.scalar_product(@vector)/ norm
  end
end
