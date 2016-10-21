#Question 4
class Person
	def initialize(name)
		@name = name
	end
#Question 5
	def greeting
		puts "Hi, my name is #{@name}."
	end
end


#Question 1
class Student < Person
#Question 2
	def learn
		puts "I get it!!"
	end

end

class Instructor < Person
#Question 3
	def teach
		puts "Everything in Ruby is an Object!"
	end

end
#Question 6
chris = Instructor.new("Chris")
chris.greeting
#Question 7
cristina = Student.new("Cristina")
cristina.greeting
#Question 8
chris.teach
cristina.learn

cristina.teach #Calling this 'teach' method on the student instance does not work because the 'teach' method is local to the 'Instructor' class. It has not been defined in the 'Student' class.
