#-------------------------------------------------------
def select_elements_starting_with_a(array)
	array.select{|x| x if x[0] == "a"}
end

#--------------------------------------------------------
def select_elements_starting_with_vowel(array)
	array.select{|x| /[a,e,o,i,u]/ =~ x[0]}
end

#-------------------------------------------------------
def remove_nils_from_array(array)
	array.select{|x| x != false}
	array.compact
end

#--------------------------------------------------------
def remove_nils_and_false_from_array(array)
	(array.select{|x| x != false}).compact
end

#--------------------------------------------------------
def reverse_every_element_in_array(array)
	array.map{|x| x.reverse}
end

#-------------------------------------------------------------- 
def every_possible_pairing_of_students(array)
	array.combination(2).to_a
end

# ----------------------------------------------------------
def all_elements_except_first_3(array)
	array.drop(3)
end

# ----------------------------------------------------------
def add_element_to_beginning_of_array(array, element)
	array.unshift(element)
end

# -----------------------------------------------------------
def array_sort_by_last_letter_of_word(array)
	arr = array.map{|x| x.reverse}.sort
	arr.map{|x| x.reverse}
end

#-------------------------------------------------------------
def get_first_half_of_string(string)
	string.chars.take((string.length.to_f/2).ceil).join("")
end

#---------------------------------------------------------------
def make_numbers_negative(number)
	-number.abs
end

#-----------------------------------------------------------------
def separate_array_into_even_and_odd_numbers(array)
	a = []
	a.push(array.select{|x| x if x.even?})
	a.push(array.select{|x| x if x.odd?})
end

#-------------------------------------------------------------------
def number_of_elements_that_are_palindromes(array)
	array.select{|x| x if x == x.reverse}.length
end

#------------------------------------------------------------------------------------
def shortest_word_in_array(array)
	array.inject{|element, result| result.length > element.length ? element : result}
end

#-------------------------------------------------------------------------------------
def longest_word_in_array(array)
	array.inject{|element, result| result.length < element.length ? element : result}
end

#----------------------------------------------------------------------
def total_of_array(array)
	array.inject(:+)
end

#----------------------------------------------------------------------
def double_array(array)
	a = array.clone
	array.push(a).flatten
end

#------------------------------------------------------------------------
def turn_symbol_into_string(symbol)
	symbol.to_s
end

#-------------------------------------------------------------------------
def average_of_array(array)
	(array.inject(:+).to_f/array.length.to_f).round
end

# ----------------------------------------------------------------------------
def get_elements_until_greater_than_five(array)
	array.take_while{|x| x <= 5}
end

#-------------------------------------------------------------------------------
def convert_array_to_a_hash(array)
	Hash[array.each_slice(2).to_a]
end

#-------------------------------------------------------------------------------
def get_all_letters_in_array_of_words(array)
	array.join("").chars.sort
end

#--------------------------------------------------------------------------------
def swap_keys_and_values_in_a_hash(hash)
	hash.invert
end

#----------------------------------------------------------------------------------
def add_together_keys_and_values(hash)
	hash.flatten.inject(:+)
end

#-----------------------------------------------------------------------------------
def remove_capital_letters_from_string(string)
	string.gsub(/[A-Z]/, "")
end

#------------------------------------------------------------------------------------
def round_up_number(float)
	float.ceil
end

#------------------------------------------------------------------------------------
def round_down_number(float)
	float.floor
end

#-------------------------------------------------------------------------------------
def format_date_nicely(date)
	date.strftime "%d/%m/%Y"
end

#--------------------------------------------------------------------------------------
def get_domain_name_from_email_address(email)
	email.split("@")[1].split(".")[0]

end

#---------------------------------------------------------------------------------------
def titleize_a_string(string)
	arr = ["a", "and", "the"]
	(string.capitalize!.split(" ").each {|x| x.capitalize! if !arr.include?(x)}).join(" ")
end

#-------------------------------------------------------------------------------------------
def check_a_string_for_special_characters(string)
	if (string =~ /\W/) == nil then false else true end

end

#--------------------------------------------------------------------------------------------
def get_upper_limit_of(range)
	Array(range).last
end

#---------------------------------------------------------------------------------------------
def is_a_3_dot_range?(range)
	(range).to_s.split(".")[2] == "" ? true : false
end

#-----------------------------------------------------------------------------------------------
def square_root_of(number)
	Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
	File.open('lorem.txt').read.split(" ").length
end

# --- tougher ones ---

#-------------------------------------------------------------------------------------------------
def call_method_from_string(str_method)
	str_method.call
end

#-------------------------------------------------------------------------------------------------
def is_a_2014_bank_holiday?(date)
	dates = [Time.new(2014, 1, 1), Time.new(2014, 4, 18), Time.new(2014, 4, 21), Time.new(2014, 5, 5), Time.new(2014, 5, 26), Time.new(2014, 8, 25), Time.new(2014, 12, 25), Time.new(2014, 12, 26)]
	dates.include?(date) ? true : false
end

# ---------------------------------------------------------------------------------
def your_birthday_is_on_a_friday_in_the_year(birthday)
	day = birthday.day
	month = birthday.day

	while birthday.friday? == false
		birthday = Time.new(birthday.year + 1, month, day)
	end
	birthday.year
end

#---------------------------------------------------------------------------------
def count_words_of_each_length_in_a_file(file_path)
	h = {}
	array = File.open('lorem.txt').read.to_s.gsub(",", " ").gsub(".", "").split(" ")
	array.each {|x| 
		h[x.length] == nil ? key = 0 : key = h[x.length]
		h[x.length] = key + 1}
	h
end

#---------------------------------------------------------------------------
def fizzbuzz_without_modulo
	for i in 1..100 do
		if i.gcd(15) == 15  
			puts "FizzBuzz"
		elsif i.gcd(15) == 3
			puts "Fizz"
		elsif  i.gcd(15) == 5
			puts "Buzz"
		else 
			puts "#{i}"
		end
	end
end

#-------------------------------------------------------------------------------------------
def ninety_nine_bottles_of_beer
	i = 99
	while i > 1
		if i == 2
			puts "#{i} bottles of beer on the wall, #{i} bottles of beer.
				Take one down and pass it around, #{i - 1} bottle of beer on the wall."
		elsif i == 1
			puts "1 bottle of beer on the wall, 1 bottle of beer.
				Take one down and pass it around, no more bottles of beer on the wall."
		else
			puts "#{i} bottles of beer on the wall, #{i} bottles of beer.
				Take one down and pass it around, #{i - 1} bottles of beer on the wall."
		end
		i -= 1

	end
	puts "No more bottles of beer on the wall, no more bottles of beer. 
			Go to the store and buy some more, 99 bottles of beer on the wall."
end
