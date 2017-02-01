# 5.2 HASHES RELEASE 3

design_profile = {
	client_name:"",
	client_age:"",

}


puts "What is the client's age?"
age = gets.chomp
design_profile[:client_age] << age
p design_profile[:client_age]