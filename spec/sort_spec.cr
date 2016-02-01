require "./spec_helper"
require "../src/sort"

describe Sort do
  it "sorts" do
    Sort.sort([] of Int32).should eq([] of Int32)
    Sort.sort([1]).should eq([1])
    Sort.sort([1, 2]).should eq([1, 2])
    Sort.sort([2, 1]).should eq([1, 2])

    Sort.sort([1, 2, 3]).should eq([1, 2, 3])
    Sort.sort([1, 3, 2]).should eq([1, 2, 3])
    Sort.sort([2, 1, 3]).should eq([1, 2, 3])
    Sort.sort([2, 3, 1]).should eq([1, 2, 3])
    Sort.sort([3, 1, 2]).should eq([1, 2, 3])
    Sort.sort([3, 2, 1]).should eq([1, 2, 3])

    Sort.sort([1, 2, 3, 4]).should eq([1, 2, 3, 4])
    Sort.sort([2, 1, 3, 4]).should eq([1, 2, 3, 4])
    Sort.sort([2, 1, 4, 3]).should eq([1, 2, 3, 4])
    Sort.sort([4, 3, 2, 1]).should eq([1, 2, 3, 4])

    Sort.sort([5, 4, 3, 2, 1]).should eq([1, 2, 3, 4, 5])

    Sort.sort([71, 85, 34, 15, 66, 93, 74, 5, 47, 29, 36, 26, 86, 73])
      .should eq([5, 15, 26, 29, 34, 36, 47, 66, 71, 73, 74, 85, 86, 93])
  end
end
