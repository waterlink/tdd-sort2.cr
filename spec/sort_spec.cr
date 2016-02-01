require "./spec_helper"
require "../src/sort"

describe Sort do
  it "sorts" do
    Sort.sort([] of Int32).should eq([] of Int32)
  end
end
