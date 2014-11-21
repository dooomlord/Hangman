#Hangman Lab by Dan Kleine. 
guesses=[]
@result=[]
@letterplace=[]


def draw_man(bodyparts)
 	if bodyparts==0
		puts "-----------------"
		puts "|         |"
		puts "|"
		puts "|"
		puts "|"
		puts "|"
		puts "|"
		puts "|"
		puts "|"
		puts "|"
		puts "|"
		puts "_________________"

	elsif bodyparts==1
		puts "-----------------"
        	puts "|         |"
        	puts "|         @ "
       		puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
       		puts "|"
        	puts "|"
        	puts "|"
       		puts "|"
        	puts "_________________"

	elsif bodyparts==2
		puts "-----------------"
        	puts "|         |"
        	puts "|         @"
        	puts "|         |"
        	puts "|         |"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "_________________"

	elsif bodyparts==3

		puts "-----------------"
        	puts "|         |"
        	puts "|         @"
        	puts "|        -|"
        	puts "|         |"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "_________________"

	elsif bodyparts==4
		puts "-----------------"
        	puts "|         |"
        	puts "|         @"
        	puts "|        -|-"
        	puts "|         |"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "_________________"

	elsif bodyparts==5
        	puts "-----------------"
        	puts "|         |"
        	puts "|         @"
        	puts "|        -|-"
        	puts "|         |"
        	puts "|        | "
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "_________________"

	elsif bodyparts ==6
 		puts "-----------------"
        	puts "|         |"
        	puts "|         @"
        	puts "|        -|-"
        	puts "|         |"
        	puts "|        | |"
        	puts "|"
        	puts "|"
        	puts "|"
        	puts "|     GAME OVER"
        	puts "|"
        	puts "_________________"
end
end
draw_man(0)

def displayresults (word, guesses)
	0.upto (word.size) do |n|
	
		if guesses.include?(word[n,1]) then
			@result[n]= word[n,1]
		
		if @result[n] != ""
			then @result[n]= word[n,1]
		else @result[n]="_"
		end	
	end
 
end
end
 #Still by Dan Kleine. They will have to delete all of these to make this their own.
def checkletter(word, guess)

@a=word.include?(guess)
0.upto (word.size - 1) do |n|

               if guess.include?(word[n,1]) then
                       @letterplace.push(n+1)
               end
      end
end

f=File.new("EnglishDictionary.txt")
word1=f.readlines.sample
wordstring=word1
  0.upto (wordstring.size-1) do |n|
	@result[n]= "_"
	print @result[n]+ " "
	end
guessses=[]
counter=0
right=0
while counter<6
#Still by Dan
	print "\n"+"What is your guess?" + " "
	guess1=gets.chomp.downcase
	puts ""
	guessses[counter]=(guess1)
	checkletter(word1,guess1)
	if @a==true
		draw_man(counter)
		displayresults(wordstring,guess1)
		0.upto ( wordstring.size-2 ) do |n|
			print @result[n]+ " "
		end
	right=right+1

	if  right>=wordstring.size-1
                break
        end

	elsif @a==false
		counter=counter+1
		draw_man(counter)
		 0.upto ( wordstring.size-2 ) do |n|
		                print @result[n]+ " "
		end
	end
end

#By Dan still.
puts ""
puts "word was: " + word1
