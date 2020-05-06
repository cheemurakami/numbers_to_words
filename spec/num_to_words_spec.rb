require("rspec")
require("num_to_words")
require('pry')
describe("to_s") do
  it("returns number into a string")  do
    expect((5).to_s).to eq("5")
  end
end

describe("single_digit") do  
  it("returns number into a word")  do
    number1 = Number.new(6)
    expect(number1.single_digit).to eq("six")
  end
end

describe("double_digit") do  
  it("returns a number 10 - 19 number into a word")  do
    number2 = Number.new(12)
    expect(number2.double_digit).to eq("twelve")
  end


  it("returns a number 20 - 99 number into a word")  do
    number4 = Number.new(20)
    expect(number4.double_digit).to eq("twenty")
    number4 = Number.new(99)
    expect(number4.double_digit).to eq("ninety nine")
  end
end

# describe("triple_digit") do 
#   it("returns a number with three digits as a word") do
#     number3 = Number.new(100)
#     expect(number3.triple_digit).to eq(['1','0','0'])
#   end
describe("triple_digit") do
  it("returns a number with three digits as a word") do
    number3 = Number.new(220)
    expect(number3.triple_digit).to eq('twen')
  end
end


