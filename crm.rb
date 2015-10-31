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
		when 4 then display_all_contacts
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

	def modify_contact
		puts "What is your contact ID?"
		eyedee = gets.chomp.to_i

		puts "Are you sure this is the ID you want to modify? (yes/no)"
		prompt = gets.chomp.downcase

		if prompt == "yes"
			contact = Contact.find(eyedee)
			puts "What do you want to change?"
			change = gets.chomp.downcase
			if "name"
				puts "first name or last name?"
					name = gets.chomp.downcase
					if name == "first"
				end
			end

		end


		# 1. Ask for a contact ID, then ask for confimation
		# 2. Get a contact based on the ID, from @@contacts array
		#    Loop through array, compare ID
		# 3. Call an instance method on that contact
	end


	def delete_contact
		puts "What contact ID do you want to delete?"
		eyedee = gets.chomp.to_i

		puts "Are you sure this is the ID you want to modify? (yes/no)"
		prompt = gets.chomp.downcase
		contact = Contact.find(eyedee)
	end

	# 	def self.del_contact
# 		puts "What contact ID do you want to delete?"
# 		eyedee = gets.chomp.to_i
# 		puts "Are you sure you want to delete ID #{eyedee}? (yes/no)"
# 		prompt = gets.chomp.downcase
# 		if eyedee == @@id

# 	end


	def display_all_contacts
		Contact.all.each do |contact|
			puts "#{contact.full_name}, #{contact.email}, #{contact.notes}"
		end
		puts "Press enter to continue"
		continue = gets.chomp
	end

end



	#def modify_contact -> Contact.modify_contact


my_awesome_crm = CRM.new('Bitmaker_CRM')
my_awesome_crm.main_menu