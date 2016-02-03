require "./spec_helper"
require "../src/kind_sort"

describe KindSort do
  empty = [] of Int32

  it "sorts" do
    KindSort.sort(empty).should eq(empty)
    KindSort.sort([1]).should eq([1])
    KindSort.sort([1, 2]).should eq([1, 2])
    KindSort.sort([2, 1]).should eq([1, 2])
  end

  it "does not modify original array" do
    a = [2, 1]
    KindSort.sort(a).should eq([1, 2])
    a.should eq([1, 2])
  end
end
