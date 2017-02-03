# NESTED DATA STRUCTURES

# Create a nested data structure using at least one hash and array 

# Create a data structure that would store the foreign nations that friends have visited.

well_traveled_friends = {
	Rosin: [
		'Philippines', 
		'France', 
		'England', 
		'Italy', 
		'Wales', 
		'Scotland'
		],
	Samantha: [
		'Japan', 
		'China', 
		'Germany', 
		'Hungary', 
		'Italy'
		], 
	Dylan: [
		'Japan', 
		'China', 
		'Germany', 
		'Hungary', 
		'Italy'
		],
	Erick: [
		'China', 
		'Thailand'
		],
	Andrew: [
		'Costa Rica', 
		'Belize'
		],
	Zack: {
		'Philippines' => {
			North: [
				'Manila', 
				'Quezon City'
				],
			South: [
				'Davao'
				]
			}, 
		'Canada' => {
			British_Columbia: ['Victoria', 'Vancouver']
			}
	}
}

# Demonstrate access to different places in the structure using different methods

puts well_traveled_friends[:Rosin]
puts well_traveled_friends[:Samantha][2]
puts well_traveled_friends[:Dylan][4] == well_traveled_friends[:Rosin][3]
# => true
puts well_traveled_friends[:Zack]['Canada']
puts well_traveled_friends[:Zack]['Philippines'][:North][0]
# => Manila
puts well_traveled_friends[:Zack]['Philippines'][:South]
# => Davao