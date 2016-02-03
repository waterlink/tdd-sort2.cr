module KindSort
  def self.sort(a)
    return a if a.size < 1

    left = empty
    right = a[1..-1]

    if a.size > 1 && a[0] > a[1]
      left << a[1]
      right = a[2..-1]
    end

    if a.size > 2 && a[0] > a[2]
      left = [a[2]]
      right = [a[1]]
    end

    left + [a[0]] + sort(right)
  end

  private def self.empty
    [] of Int32
  end
end
