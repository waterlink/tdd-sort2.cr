module Sort
  def self.sort(a)
    4.times do
      (a.size - 1).times do |i|
        if a[i] > a[i + 1]
          a[i], a[i + 1] = {a[i + 1], a[i]}
        end
      end
    end

    a
  end
end
