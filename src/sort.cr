module Sort
  def self.sort(a)
    if a.size > 1 && a[0] > a[1]
      a[0], a[1] = {a[1], a[0]}
    end

    if a.size > 2 && a[1] > a[2]
      a[1], a[2] = {a[2], a[1]}
    end

    a
  end
end
