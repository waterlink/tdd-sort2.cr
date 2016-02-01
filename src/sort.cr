module Sort
  def self.sort(a)
    if a[0] > a[1]
      a[0], a[1] = {a[1], a[0]}
    end

    a
  end
end
