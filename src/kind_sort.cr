module KindSort
  def self.sort(a)
    return a if a.size < 1

    left = empty
    right = a[1..-1]

    if a.size > 1
      if a[0] > a[1]
        left << a[1]
      else
        right << a[1]
      end
    end

    if a.size > 2
      if a[0] > a[2]
        left << a[2]
      else
        right << a[2]
      end
    end

    left + [a[0]] + sort(right)
  end

  private def self.empty
    [] of Int32
  end
end
