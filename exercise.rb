require 'httparty'

def result

  random_passwords = HTTParty.get('https:// makemeapassword.org/api/v1/pronouncable/json?c=10&l=16&bmp=T')

  parsed_response = JSON.parse(random_passwords.body)

  passwords = []

  parsed_response['pws'].each do |password|
		passwords << (password)
	end

	puts "The passwords are:"
	puts passwords
	return passwords

end

result
