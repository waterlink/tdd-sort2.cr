module Sort
  def self.sort(a)
    return a if a.size < 2

    if a[0] > a[1]
      a[0], a[1] = {a[1], a[0]}
    end

    a
  end
end
