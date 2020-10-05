require_relative 'test_helper'
require_relative "../pdf_pricer"

describe PDF do
  let(:pdf1) {PDF.new(100, 1, 1, true, true)}
  let(:pdf2) {PDF.new(600, 5, 1, true, true)}

  it "TC1" do
    expect(pdf1.bind_book_price(true)).to eq(6000)
  end

  it "TC2" do
    expect(pdf2.bind_book_price(false)).to eq(24000)
  end
end