module KindSort
  def self.sort(a)
    return a if a.size < 1

    if a.size > 1 && a[0] > a[1]
      return [a[1]] + [a[0]] + sort(a[2..-1])
    end

    empty + [a[0]] + sort(a[1..-1])
  end

  private def self.empty
    [] of Int32
  end
end
