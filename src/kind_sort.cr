module KindSort
  def self.sort(a)
    return a if a.size < 1

    left = empty
    right = empty

    i = 1
    if a.size > i
      if a[0] > a[i]
        left << a[i]
      else
        right << a[i]
      end
    end

    i = 2
    if a.size > i
      if a[0] > a[i]
        left << a[i]
      else
        right << a[i]
      end
    end

    sort(left) + [a[0]] + sort(right)
  end

  private def self.empty
    [] of Int32
  end
end
