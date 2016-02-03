require "./spec_helper"
require "../src/kind_sort"

describe KindSort do
  empty = [] of Int32

  it "sorts" do
    KindSort.sort(empty).should eq(empty)
    KindSort.sort([1]).should eq([1])
    KindSort.sort([1, 2]).should eq([1, 2])
    KindSort.sort([2, 1]).should eq([1, 2])

    KindSort.sort([1, 2, 3]).should eq([1, 2, 3])
    KindSort.sort([2, 1, 3]).should eq([1, 2, 3])
    KindSort.sort([1, 3, 2]).should eq([1, 2, 3])
    KindSort.sort([2, 3, 1]).should eq([1, 2, 3])
    KindSort.sort([3, 2, 1]).should eq([1, 2, 3])

    KindSort.sort([55, 60, 63, 95, 87, 75, 9, 86, 50, 80, 3, 82, 37, 67])
      .should eq([3, 9, 37, 50, 55, 60, 63, 67, 75, 80, 82, 86, 87, 95])
  end

  it "does not modify original array" do
    a = [2, 1]
    KindSort.sort(a).should eq([1, 2])
    a.should eq([2, 1])
  end
end
