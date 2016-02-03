module KindSort
  def self.sort(a)
    if a.size > 1 && a[0] > a[1]
      a[0], a[1] = {a[1], a[0]}
    end

    a
  end

  private def self.empty
    [] of Int32
  end
end
