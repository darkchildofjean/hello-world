def countby2(evens)
  evens = 0
   until evens == 10
     evens = evens + 2
     puts(evens)
   end
end
evens = ""
puts countby2(evens)


def lessthan0(number)
  if number < 0
    return true
  else
    return false
  end
end

puts lessthan0(5)
puts lessthan0(-5)

def wordvsnumber(theword, thenumber)
  if theword.length.to_i > thenumber
    return true
  else
    return false
  end
end

puts wordvsnumber("cucumber" , 10)
puts wordvsnumber("supercalifragilisticexpialidocious" , 12 )

def isitavowel(myletter)
  if myletter.upcase == "A"
    return true
  elsif myletter.upcase == "E"
    return true
  elsif myletter.upcase == "I"
    return true
  elsif myletter.upcase == "O"
    return true
  elsif myletter.upcase == "U"
     return true
   else
     return false
   end
end

puts isitavowel("j")
puts isitavowel("i")
puts isitavowel("P")
puts isitavowel("a")

def extractthenumbers(thelist)
  otherlist = []
  thelist.each do | item |
    notnumber = nil
    begin
      notnumber = Integer(item)
      otherlist.push(notnumber)
    rescue ArgumentError
      notnumber = nil
    end
  end
  return otherlist
end

puts extractthenumbers([4,"e", 22,"r", 78, "l", "g", 21])

def negativenumcount(alist)
  neglist = []
  alist.each do | item |
    if item < 0
      neglist.push(item)
    end
  end
    return neglist.length.to_s
end

puts negativenumcount([1, -21, 9, 56, -8, -9, 0])

def average(avglist)
  sum = 0
  avglist.each do | item |
    sum = sum.to_i + item.to_i
  end
  return sum / avglist.length.to_i
end

puts average([12, 21, 15, 17, 10, 14, 20])

def listofvalues(values)
  valuesarray = []
  loop do
    if values.upcase == "Q"
      break
    else
      valuesarray.push(values)
    end
    values = gets.chomp.strip
  end
  return valuesarray.join(",")
end

puts("enter values...enter q to stop")
values = gets.chomp.strip
puts listofvalues(values)

def howmanymorethan7(wordlist)
  anotherlist = []
  wordlist.each do | item |
    if item.length > 7
      anotherlist.push(item)
    end
    end
    return anotherlist.length.to_s
end

puts howmanymorethan7(["once", "upon", "a", "midnight", "dreary", "while", "I", "pondered", "weak", "and", "weary", "over", "many", "a", "and", "curious", "volume", "of", "forgotten"])

=begin
def vowelsasterix(aword)
  thisarray = aword.split("")
  thisarray.each_with_index do |item , index|
  if item.upcase == "A"
    item[index] = "*"
  elsif item.upcase == "E"
    item[index] = "*"
  elsif item.upcase == "I"
    item[index] = "*"
  elsif item.upcase == "O"
    item[index] = "*"
  elsif item.upcase == "U"
    item[index] = "*"
  else
    item[index] = item
  end
  end
  return thisarray
end

puts vowelsasterix("supercalifragilisticexpialidocious")
=end
anotherarray = []
puts("Please enter your name!")
name = gets.chomp.strip
puts ("Please enter a word, " + name + "!")
thword = gets.chomp.strip
puts ("Ok " + name + "! Your word was " + thword)
thwordarray = thword.split()
puts thwordarray
anotherarray.push(thwordarray)
nextword = nil
tryagain = "yes"
loop do
  if tryagain.upcase == "NO" || tryagain.upcase == "N"
    break
  else
    puts ("Enter another word")
    nextword = gets.chomp.strip
    anotherarray.push(nextword)
    puts("would you like to enter another word?")
    tryagain = gets.chomp.strip
  end
end
puts anotherarray
puts("you entered " + howmanymorethan7(anotherarray) + " words with more than 7 letters!")
puts("Thank you " + name + " for your participation in this script!")



playagain1 = "yes"
until playagain1.upcase == "NO" || playagain1.upcase == "N"
onemorearray = []
arry = []
yetanotherarray = []
puts("Please enter your name!")
yourname = gets.chomp.strip
puts("Ok " + yourname + "! Enter numbers both positive and negative...enter q to stop!")
thenumbers = ""
until thenumbers.upcase == "Q"
  thenumbers = gets.chomp.strip
  notnumber2 = nil
  begin
    notnumber2 = Integer(thenumbers)
    yetanotherarray.push(thenumbers)
  rescue
    notnumber2 = nil
  end
end
puts( name + " you entered " + yetanotherarray.length.to_s + " numbers")
puts yetanotherarray
yetanotherarray.each do | item |
  if item.to_i >= 0
    onemorearray.push(item)
  else
    arry.push(item)
  end
end
  puts ("You entered " + onemorearray.length.to_s + " positive numbers and " + arry.length.to_s + " negative numbers! ")
puts ("The average is of your numbers is " + average(yetanotherarray).to_s + " There you go!")
puts (" Would you like to try again?")
playagain1 = gets.chomp.strip
end
