require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(1000, 6, 5, true, true)}
  let(:pdf2) {PDF.new(100, 1, 1, false, false)}
  let(:pdf3) {PDF.new(100, 1, 1, true, false)}

  it "TC1: validate price" do
    expect(pdf1.bind_book_price(true)).to eq(10000)
  end

  it "TC2: validate price" do
    expect(pdf2.bind_book_price(false)).to eq(4000)
  end

  it "TC3: validate price" do
    expect(pdf3.bind_book_price(false)).to eq(8000)
  end
  
end