require_relative 'contact.rb'

class CRM
	def initialize(name)
		@name = name
	end


	def print_main_menu
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute"
	  puts "[6] Exit"
	  puts "Enter a number: "
	end

	def main_menu
	  while true
 	  	print_main_menu
 	  	print "Choose an option: "
 	  	user_input= gets.chomp.to_i
 	  	break if user_input == 7
  	  	choose_option(user_input)
  	  end
	end

	def choose_option(input)
		case input
		when 1 then add_contact
		when 2 then modify_contact
		when 3 then delete_contact
		when 4 then display_contact
		when 5 then display_contact_attributes
		when 6 then exit
		else puts "Sorry, that's not an option"
		end
	end

	def add_contact
		print "First name: "
		first_name = gets.chomp

		print "Last name: "
		last_name = gets.chomp

		print "Email: "
		email = gets.chomp

		print "Notes: "
		notes = gets.chomp

		options = {
			 email: email,
			 notes: notes
			}

		Contact.create(first_name, last_name, options)
	end

end


my_awesome_crm = CRM.new('Bitmaker_CRM')
my_awesome_crm.main_menu