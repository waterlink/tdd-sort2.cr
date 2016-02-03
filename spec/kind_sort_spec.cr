require "./spec_helper"
require "../src/kind_sort"

describe KindSort do
  empty = [] of Int32

  it "sorts" do
    KindSort.sort(empty).should eq(empty)
    KindSort.sort([1]).should eq([1])
  end
end
