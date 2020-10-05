require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(1000, 6, 5, true, true)}
  let(:pdf2) {PDF.new(100, 1, 1, false, false)}
  let(:pdf3) {PDF.new(500, 1, 3, true, true)}
  let(:pdf4) {PDF.new(100, 1, 1, true, true)}

  it "TC1: Covers TR1, TR3, TR5, TR7, TR9, TR11" do
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end

  it "TC2: Covers TR2, TR6, TR10" do
    expect(pdf2.bind_book_price(false)).to eq(4000)
  end

  it "TC3: Covers TR4, TR8, TR13" do 
    expect(pdf3.bind_book_price(false)).to eq(16000)
  end

  it "TC4: Covers TR12, TR14" do
    expect(pdf4.bind_book_price(false)).to eq(8000)
  end

end