def getnumfromplayer()
  wordlength = gets.chomp.strip
  notnumber1 = nil
  until notnumber1 != nil
  begin
    notnumber1 = Integer(wordlength)
  rescue ArgumentError
    notnumber1 = nil
    puts("I need a number so I can select the appropriate length of word and start the game!")
    wordlength = gets.chomp.strip
  end
end
return notnumber1
end
def getword(playername)
  puts("Ok " + playername + "! Now tell me...What is the length of the word that you would like to try and guess this time around?")
  winningwordarray = []
  wordlength = getnumfromplayer()
  until winningwordarray.empty? == false
  $AllWords.each_with_index do | item , index|
    if item.length == wordlength
      winningwordarray.push(item)
    end
  end
  if winningwordarray.empty? == true
    puts ("We are not set up for words of that length! We have a limited vocabulary. Once again! How long of a word? try 1-11!")
    wordlength = getnumfromplayer()
  end
end
winningword = winningwordarray[rand(0..winningwordarray.length)]
#puts winningwordarray
return winningword
end
$AllWords = ["a", "able", "about", "above", "across", "act", "action", "actually", "add", "addition", "adjective", "afraid", "Africa", "after", "again", "against", "age", "ago", "agreed", "ahead", "air", "alimony", "all", "allow", "almost", "alone", "along", "already", "also", "although", "always", "am", "America", "among", "amount", "an", "and", "angle", "animal", "another", "answer", "any", "anything", "appear", "apple", "are", "area", "arms", "army", "around", "arrived", "art", "as", "ask", "at", "away", "baby", "back", "bad", "ball", "bank", "base", "be", "bear", "beat", "beautiful", "became", "because", "become", "bed", "been", "before", "began", "begin", "behind", "being", "believe", "bell", "belong", "below", "beside", "best", "better", "between", "big", "bill", "birds", "bit", "black", "block", "blood", "blow", "blue", "board", "boat", "body", "bones", "book", "born", "both", "bottom", "box", "boy", "branches", "break", "bright", "bring", "British", "broken", "brother", "brought", "brought", "brown", "build", "building", "built", "burning", "business", "but", "buy", "by", "call", "came", "can", "cannot", "capital", "captain", "car", "care", "carefully", "carry", "case", "cat", "catch", "cattle", "caught", "cause", "cells", "center", "cents", "century", "certain", "chance", "change", "chart", "check", "chief", "child", "children", "choose", "church", "circle", "circular", "city", "class", "clean", "clear", "climbed", "close", "clothes", "cloud", "coast", "cold", "color", "column", "come", "common", "company", "compare", "complete", "compound", "conditions", "consider", "consonant", "contain", "continued", "control", "cook", "cool", "cooler", "copy", "corn", "corner", "correct", "cost", "cotton", "could", "count", "country", "course", "covered", "cows", "create", "cried", "crops", "cross", "crowd", "crowded", "current", "cut", "dance", "dark", "day", "dead", "deal", "death", "decided", "decimal", "deep", "describe", "desert", "design", "details", "determine", "developed", "dictionary", "did", "died", "difference", "different", "difficult", "direct", "direction", "discovered", "distance", "divided", "division", "do", "doctor", "does", "dog", "dollars", "done", "door", "down", "draw", "drawing", "dress", "drive", "drop", "dry", "during", "each", "early", "ears", "earth", "east", "easy", "eat", "edge", "effect", "eggs", "eight", "either", "electric", "elements", "else", "end", "energy", "engine", "England", "English", "enjoy", "enough", "entered", "entire", "equal", "equation", "especially", "Europe", "even", "evening", "ever", "every", "everyone", "everything", "exactly", "example", "except", "exciting", "exercise", "expect", "experience", "experiment", "explain", "express", "eye", "face", "fact", "factories", "factors", "fall", "family", "famous", "far", "farm", "farmers", "fast", "father", "fear", "feel", "feeling", "feet", "fell", "felt", "few", "field", "fig", "fight", "figure", "filled", "finally", "find", "fine", "fingers", "finished", "fire", "first", "fish", "fit", "five", "flat", "floor", "flow", "flowers", "fly", "follow", "food", "foot", "for", "force", "forest", "form", "forward", "found", "four", "fraction", "France", "free", "French", "fresh", "friends", "from", "front", "fruit", "full", "fun", "funny", "game", "garden", "gas", "gave", "general", "get", "girl", "give", "glass", "go", "gold", "golden", "gone", "good", "got", "government", "grass", "great", "Greek", "green", "grew", "ground", "group", "grow", "guess", "gun", "had", "hair", "halt", "hand", "happened", "happy", "hard", "has", "hat", "have", "he", "head", "hear", "heard", "heart", "heat", "heavy", "held", "help", "her", "here", "high", "hill", "him", "himself", "his", "history", "hit", "hold", "hole", "home", "hope", "horse", "hot", "hours", "house", "how", "however", "huge", "human", "hundred", "hunting", "I", "ice", "idea", "if", "important", "in", "inches", "include", "increase", "Indian", "indicate", "industry", "information", "insects", "inside", "instead", "instruments", "interest", "interest", "into", "iron", "is", "island", "it", "its", "itself", "Japanese", "job", "joined", "jumped", "just", "keep", "kept", "key", "killed", "kind", "king", "knew", "know", "known", "lady", "lake", "land", "language", "large", "last", "later", "laughed", "law", "lay", "lead", "learn", "least", "leave", "led", "left", "legs", "length", "less", "let", "letter", "level", "lie", "life", "lifted", "light", "like", "line", "list", "listen", "little", "live", "located", "long", "look", "lost", "lot", "loud", "love", "low", "machine", "made", "main", "major", "make", "man", "many", "map", "mapmaker", "march", "mark", "match", "material", "matter", "may", "maybe", "me", "mean", "measure", "meat", "meet", "melody", "members", "men", "metal", "method", "middle", "might", "mile", "milk", "million", "mind", "mine", "minutes", "miss", "modern", "molecules", "moment", "money", "months", "moon", "more", "morning", "most", "mother", "mountain", "mouth", "move", "movement", "much", "music", "must", "my", "name", "nation", "natural", "near", "necessary", "need", "never", "new", "next", "night", "no", "nor", "north", "northern", "nose", "not", "note", "nothing", "notice", "noun", "now", "number", "numeral", "object", "observe", "ocean", "of", "off", "office", "often", "oh", "oil", "old", "on", "once", "one", "only", "open", "opposite", "or", "order", "other", "our", "out", "outside", "over", "own", "oxygen", "page", "paint", "pair", "paper", "paragraph", "park", "part", "particular", "party", "passed", "past", "pattern", "pay", "people", "per", "perhaps", "period", "person", "phrase", "picked", "picture", "piece", "place", "plains", "plan", "plane", "plant", "plants", "play", "please", "plural", "poem", "point", "pole", "poor", "position", "possible", "pounds", "power", "practice", "prepared", "presidents", "pretty", "printed", "probably", "problem", "process", "produce", "products", "property", "provide", "pulled", "pushed", "put", "questions", "quickly", "quiet", "quite", "race", "radio", "rain", "raised", "ran", "rather", "reached", "read", "ready", "really", "reason", "received", "record", "red", "region", "remain", "remember", "repeated", "report", "represent", "resent", "rest", "result", "return", "rhythm", "rich", "ride", "right", "ring", "rise", "river", "riverbed", "road", "rock", "rolled", "room", "roommate", "root", "rope", "rose", "round", "row", "rule", "run", "safe", "said", "sail", "same", "sand", "sandbox", "sat", "save", "saw", "say", "scale", "school", "schoolyard", "science", "scientists", "score", "sea", "seat", "second", "section", "see", "seeds", "seem", "seen", "sell", "send", "sense", "sent", "sentence", "separate", "serve", "set", "settled", "seven", "several", "shall", "shape", "sharp", "she", "ship", "shoes", "shop", "short", "should", "shoulder", "shouted", "show", "shown", "side", "sight", "sign", "signal", "silent", "similar", "simple", "since", "sing", "sir", "sister", "sit", "six", "size", "skin", "sky", "sleep", "sleep", "slowly", "small", "smell", "smiled", "snow", "so", "soft", "soil", "soldiers", "solution", "some", "someone", "something", "sometimes", "son", "song", "soon", "sound", "south", "southern", "space", "speak", "special", "speed", "spell", "spot", "spread", "spring", "square", "stand", "stars", "start", "state", "statement", "stay", "steel", "step", "stick", "still", "stone", "stood", "stop", "store", "story", "straight", "strange", "stream", "street", "stretched", "string", "strong", "students", "study", "subject", "substances", "such", "suddenly", "suffix", "sugar", "suggested", "sum", "summer", "sun", "supply", "suppose", "sure", "surface", "surprise", "swim", "syllables", "symbols", "system", "table", "tail", "take", "talk", "tall", "teacher", "team", "tell", "temperature", "ten", "terms", "test", "than", "that", "the", "their", "them", "themselves", "then", "there", "these", "they", "thick", "thin", "thing", "think", "third", "this", "those", "though", "thought", "thousands", "three", "through", "thus", "tied", "time", "tiny", "to", "today", "together", "told", "tomorrow", "tone", "too", "took", "tools", "top", "total", "touch", "toward", "town", "track", "trade", "train", "train", "travel", "tree", "triangle", "trip", "trouble", "truck", "true", "try", "tube", "turn", "two", "type", "uncle", "under", "underline", "understand", "unit", "until", "up", "upon", "us", "use", "usually", "valley", "value", "various", "verb", "very", "view", "village", "visit", "voice", "vowel", "wait", "walk", "wall", "want", "war", "warm", "was", "wash", "Washington", "watch", "water", "waves", "way", "we", "wear", "weather", "week", "weight", "well", "wellness", "went", "were", "west", "western", "what", "whatever", "wheels", "when", "where", "whether", "which", "while", "white", "who", "whole", "whose", "why", "wide", "widen", "wife", "wild", "will", "win", "wind", "window", "wings", "winter", "wire", "wish", "with", "within", "without", "woman", "women", "wonder", "wood", "word", "work", "workers", "world", "would", "write", "written", "wrong", "wrote", "yard", "year", "yellow", "yes", "yet", "you", "young", "your", "yourself"]

play_again = "Yes"
puts ("Hello player! Please enter your name!")
playername = gets.chomp.strip.capitalize
until play_again.upcase == "NO" || play_again.upcase == "N"
  winningword = getword(playername)
  secretword = winningword.split("")
  #puts secretword
  counter = 1
  lives = winningword.length + 4
  winningwordarray = []
  puts secretword
  puts("Alright " + playername + "! It's time to start guessing the letters of my secret word! Take too many guesses and your name becomes mud...and we all know what mud spelled backwards is...Take your guess!")
  guess = gets.chomp.strip
  winningword.length.times do
    winningwordarray.push("_")
end
until winningwordarray == secretword || lives < 1
found_it = secretword.index(guess)
if found_it == nil
  puts("That letter is not in our word! You lose a life!")
  lives = lives - 1
  puts ("remaining lives = " + lives.to_s)
end
secretword.each_with_index do |item , index|
  if guess == item
    if winningwordarray[index] == guess
      lives = lives - 1
      puts (" You already guessed that letter...NAUGHTY! NAUGHTY! I think I'll take a life!")
      puts ("You have " + lives.to_s + " lives remaining!")
      break
    else
      winningwordarray[index] = guess
    end
  end
end
puts winningwordarray.join(" ")
if winningwordarray != secretword
  guess = gets.chomp.strip
  counter = counter + 1
end
end
if winningwordarray == secretword
  puts("Congratulations! You have won the game after " + counter.to_s + " attempts with " + lives.to_s + " lives left! Lucky you!")
  puts("Would you like to try again?")
else
  puts("You Lose, Mud! Would you like to try again?")
end
play_again = gets.chomp.strip
end
