module Sort
  def self.sort(a)
    i = 0
    while a.size > i + 1
      if a.size > i + 1 && a[i] > a[i + 1]
        a[i], a[i + 1] = {a[i + 1], a[i]}
      end
      i += 1
    end

    a
  end
end
