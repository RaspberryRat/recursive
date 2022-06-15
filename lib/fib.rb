
def fibs_rec(num = gets.chomp.to_i, result = [])
  unless num.integer? && num >= 0
    puts "You must enter an integer value greater than 0\n"
    return fibs_rec
  end
  return if num == 0
  return result.push(0) if num < 2
  return result.push(0, 1) if num == 2

  fibs_rec(num - 1, result)
  result.push(result[-2] + result[-1])
end



puts "Enter a number>>"
print fibs_rec
puts "\n\n"

