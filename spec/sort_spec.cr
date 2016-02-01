require "./spec_helper"
require "../src/sort"

describe Sort do
  it "sorts" do
    Sort.sort([] of Int32).should eq([] of Int32)
    Sort.sort([1]).should eq([1])
    Sort.sort([1, 2]).should eq([1, 2])
    Sort.sort([2, 1]).should eq([1, 2])

    Sort.sort([1, 2, 3]).should eq([1, 2, 3])
  end
end
