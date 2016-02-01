module Sort
  def self.sort(a)
    i = 0
    if a.size > i + 1 && a[i] > a[i + 1]
      a[i], a[i + 1] = {a[i + 1], a[i]}
    end

    if a.size > 2 && a[1] > a[2]
      a[1], a[2] = {a[2], a[1]}
    end

    a
  end
end
