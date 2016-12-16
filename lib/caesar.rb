#have the arrays with letters inside the method

def caesar_encode(string,offset)
    alpha_uppercase = [*?A..?Z] 
    #array with all caps
    alpha_lowercase = [*?a..?z] 
    #array with lower case 
    empty= "" 
    #setting array to zero to later hold something
    
    string.each_char do |letters| #goes through every character found in the string
    if letters[/[a-zA-Z]/] == letters #it is regex // 
    #checks to see if the character is a lowercase a-z ir capital A-Z
    #matches the character to a letter in alpha
    if letters.upcase == letters #checks if capital letter
    index= (alpha_uppercase.index(letters) + offset ) %26 #goes into the array
      letters.sub!(letters,alpha_uppercase[index])
      #.sub #subsituting the character (replacing/ with what)
        else 
            #same for lowercase
                index = (alpha_lowercase.index(letters) + offset) % 26
                letters.sub!(letters,alpha_lowercase[index])
             end
  else
    letters
end
  empty << letters
end
empty
end
#do the same as the code above but using subtraction.
#letters-offset 
#CAPS or Lowercase >>>>> .index(letters)+offset) module 

def caesar_decode(letters,offset) 
    #other things google
    #.scan(/\w+|\W+/)
    #split(/(\W)/)
    #/\s/ - A whitespace character: /[ \t\r\n\f]/
    #string.split(/(\W)/)
     alpha_uppercase = [*?A..?Z] 
     #could use a global variable but it doesnt work when I use the $
    alpha_lowercase = [*?a..?z]
     empty= "" 
     
       string.each_char do |letters| 
    if letters[/[a-zA-Z]/] == letters 
    if letters.upcase == letters 
    index= (alpha_uppercase.index(letters) - offset ) % 26 
      letters.sub!(letters,alpha_uppercase[index])
        else 
            
                index = (alpha_lowercase.index(letters) - offset) % 26
                letters.sub!(letters,alpha_lowercase[index])
             end
  else
    letters
end
  empty << letters
end
empty
end

#caesar_decode("b",3)
