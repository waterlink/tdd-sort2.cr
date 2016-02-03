module KindSort
  def self.sort(a)
    return a if a.size < 1

    left = empty
    right = empty

    i = 1
    while a.size > i
      if a[0] > a[i]
        left << a[i]
      else
        right << a[i]
      end
      i += 1
    end

    sort(left) + [a[0]] + sort(right)
  end

  private def self.empty
    [] of Int32
  end
end
