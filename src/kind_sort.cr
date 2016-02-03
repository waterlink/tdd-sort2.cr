module KindSort
  def self.sort(a)
    return a if a.size < 1

    left, right = parts(a)
    sort(left) + [a[0]] + sort(right)
  end

  private def self.parts(a)
    left = empty
    right = empty

    a[1..-1].each do |x|
      part_for(a[0], x, left, right) << x
    end

    {left, right}
  end

  private def self.part_for(y, x, left, right)
    return left if y > x
    right
  end

  private def self.empty
    [] of Int32
  end
end
