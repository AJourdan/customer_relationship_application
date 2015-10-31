class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1

	def initialize(first_name, last_name, options = {})
		@first_name = first_name
		@last_name = last_name
		@email = options[:email]
		@notes = options[:notes]

		@id = @@id
		@@id += 1

	end

	def self.create(first_name, last_name, options = {})
		new_contact = Contact.new(first_name, last_name, options)
		@@contacts << new_contact
	end

	# 	# 1. Ask for a contact ID, then ask for confimation
	# 	# 2. Get a contact based on the ID, from @@contacts array
	# 	#    Loop through array, compare ID
	# 	# 3. Call an instance method on that contact
	# end

	def self.find(id_to_look_for)
		@@contacts.find { |contact| contact.id == id_to_look_for }
	end

	def self.all
		@@contacts
	end

	def full_name
		puts "#{first_name} #{last_name}"
	end

	def self.delete(id_found)
		@@contacts.delete { |contact| contact.id == id_found }
	end


 end

	# If you need a contact from the @@contacts array, call a class method.
	# If you want to change or print a single contact. Use an instance method.

	# attr_accessor creates these methods

	# Attr_writer
	# def first_name
	# 	@first_name
	# end

	# attr_reader
	# def first_name=(new_first_name)
	# 	@first_name = new_first_name
	# end

