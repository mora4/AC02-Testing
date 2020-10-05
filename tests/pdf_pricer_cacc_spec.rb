require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(1000, 6, 5, true, true)}
  let(:pdf2) {PDF.new(101, 6, 1, false, true)}
  let(:pdf3) {PDF.new(401, 1, 1, false, true)}
  let(:pdf4) {PDF.new(400, 5, 0, false, false)}
  let(:pdf5) {PDF.new(400, 0, 0, false, false)}
  let(:pdf6) {PDF.new(100, 1, 10, false, false)}

  it "TC1: validate price" do
    # TR1, TR3
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end

  it "TC2: validate price" do
    # TR2, TR4
    expect(pdf2.bind_book_price(true)).to eq(4000)
  end

  it "TC3: validate price" do
    # TR5
    expect(pdf1.bind_book_price(false)).to eq(20000)
  end

  it "TC4: validate price" do
    # TR6
    expect(pdf3.bind_book_price(false)).to eq(8000)
  end

  it "TC5: validate price" do
    # TR7
    expect(pdf2.bind_book_price(false)).to eq(8000)
  end

  it "TC6: validate price" do
    # TR8
    expect(pdf4.bind_book_price(false)).to eq(4000)
  end

  it "TC7: validate price" do
    # TR9
    expect(pdf5.bind_book_price(true)).to eq(4000)
  end

  it "TC8: validate price" do
    # TR10
    expect(pdf6.bind_book_price(true)).to eq(4000)
  end

end