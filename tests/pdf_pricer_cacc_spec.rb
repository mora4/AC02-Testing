require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(1000, 6, 5, true, true)}
  let(:pdf2) {PDF.new(600, 1, 1, false, true)}
  let(:pdf3) {PDF.new(100, 3, 1, true, false)}
  let(:pdf4) {PDF.new(50, 0, 0, false, true)}
  let(:pdf5) {PDF.new(1150, 0, 5, false, false)}

  it "TC1: Covers TR1, TR3, TR5, TR13(a y b)" do
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end

  it "TC2: Covers TR2, TR4, TR7, TR8a, TR10" do
    expect(pdf2.bind_book_price(false)).to eq(8000)
  end

  it "TC3: Covers TR9b, TR6" do
    expect(pdf3.bind_book_price(false)).to eq(8000)
  end

  it "TC4: Covers TR11" do
    expect(pdf4.bind_book_price(false)).to eq(4000)
  end

  it "TC5: Covers TR12" do
    expect(pdf5.bind_book_price(true)).to eq(4000)
  end
end