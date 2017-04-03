struct User {
	let name: String
	let password: String
	let email: String
	let age: Int
	let country: String
}

let userData: [String]? = []

var user: User?

if let data = userData, data.count == 5, let age = Int(data[3]) {
	user = User(name: data[0], password: data[1], email: data[2], age: age, country: data[4])
}
