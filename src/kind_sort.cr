module KindSort
  def self.sort(a)
    if a.size > 1 && a[0] > a[1]
      return [a[1], a[0]] + a[2..-1]
    end

    [a[0]] + sort(a[1..-1])
  end

  private def self.empty
    [] of Int32
  end
end
