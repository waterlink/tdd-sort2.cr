module Sort
  def self.sort(a)
    (a.size - 1).times do |i|
      if a.size > i + 1 && a[i] > a[i + 1]
        a[i], a[i + 1] = {a[i + 1], a[i]}
      end
    end

    a
  end
end
