class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1
	@@app = []

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

	def self.all
		@@contacts
	end

	def full_name
		puts "#{first_name}, #{last_name}"
	end

	def self.number(1)
		1 += 1
	end



end

	# attr_accessor creates these methods

	# Attr_writer
	# def first_name
	# 	@first_name
	# end

	# attr_reader
	# def first_name=(new_first_name)
	# 	@first_name = new_first_name
	# end

daniel.details
andrew = Contact.new("Andrew", "Carter")
andrew.full_name
Contact.number()
andrew = Contact.new
andrew.full_name
andrew.last_name
andrew.options[:email]
Contact.all