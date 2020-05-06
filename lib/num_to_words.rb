class Number

  def initialize(num)
    @number = num
    @one_to_nine = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight","9" => "nine"}
    @ten_to_nineteen = {"10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen","19" => "nineteen"}
    @tenths = {"2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
    @return_arr = []
  end

  def single_digit
    @one_to_nine.fetch(@number.to_s)
  end
  
  def double_digit
    if @ten_to_nineteen.include?(@number.to_s)
      @ten_to_nineteen.fetch(@number.to_s)
    else
      new_arr = @number.to_s.split("")
      @return_arr.push(@tenths.fetch(new_arr[0])) #["forty"]
      @return_arr.push(@one_to_nine.fetch(new_arr[1])) #["forty","two"]
      @return_arr.join(" ")  #"forty two"
    end
  end

  def triple_digit
    if @number.to_s.split("")[1] == '0' && @number.to_s.split("")[2] == '0'
      Number.new(@number.to_s.split("")[0]).single_digit + ' hundred' 
    else
      two_digit = [@number.to_s.split("")[1],@number.to_s.split("")[2]].join("").to_i
      Number.new(two_digit).double_digit
    end
  end


  # def triple_digit
  #   new_arr = @number.to_s.split("") 
  #   @return_arr.push(@one_to_nine.fetch(new_arr[0]) + " hundred")
  #   pass_arr = []
  #   pass_arr.push(new_arr[1])
  #   pass_arr.push(new_arr[2]) #["4","2"]
  #   pass_num = Number.new(pass_arr.join("")) #42
  #   pass_num.double_digit
   
  #   @return_arr.join(" ")
  # end


end