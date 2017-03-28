
array =[]
counter = 0
until counter == 4
  puts("Enter 4 numbers and I will tell you whether it's odd or even")
  entry = gets.chomp.strip.to_i
  array.push(entry)
if entry % 2 == 0
  puts ("even")
else
  puts("odd")
end
counter = counter + 1
end
puts("Your numbers are " + array.to_s)



array = []
counter = 0
until counter == 4
puts("Please enter a number")
entry = gets.chomp.strip.to_i
array.push(entry)
if entry % 2 == 0
  puts("This number is even!")
else
  puts("This number is odd")
end
counter = counter + 1
end
puts("Here's the numbers you entered " + array.to_s)



stringy = ("")
track = 0
while track <= 2
  puts("please enter a letter")
  letter = gets.chomp.strip
  stringy.insert(0, letter)
  track += 1
end
puts(stringy)



puts ("Enter a word! NOW!!!")
wordy = gets.chomp.strip
while wordy.empty? == true
  puts("Enter a real word!")
  wordy = gets.chomp.strip
end
  puts("You are a tool and your word, " + wordy.capitalize + ", has " + wordy.length.to_s + " letters!")



 thisarray = [0,-2,4,-6,0,1]
newarray = []
counter1 = 0
until counter1 == thisarray.length
  number = thisarray[counter1]
  puts(number)
  if number > 0
    newarray.push(number)
  end
  counter1 = counter1 + 1
end
  puts("There are " + newarray.length.to_s + " positve numbers in my array!")



wordentry = ""
puts("Enter a word")
wordentry = gets.chomp.strip
newarray = wordentry.split ("")
puts("Please enter a letter!")
letter = gets.chomp.strip
counter = 0
while counter < newarray.length
  other = newarray[counter]
  if (letter == other) then
    newarray.delete_at(counter)
else
  counter = counter + 1
  end
end
adj =  newarray.join("")
adj = adj.upcase
puts(adj)


word = "jello"
puts("Enter a word :)")
word = gets.chomp.strip
thearray = word.split('')
flip = ""
counter = word.length - 1
while counter >= 0
  nextletter = thearray[counter]
  flip = flip + nextletter.to_s
  counter = counter - 1
end

puts("here it is! " + thearray.join() + flip.to_s)
