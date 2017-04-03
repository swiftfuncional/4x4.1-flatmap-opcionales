import Foundation

struct User {
	let name: String
	let password: String
	let email: String
	let age: Int
	let country: String
}

let userData: [String]? = []

let user: User? = userData.flatMap {
	guard $0.count == 5, let age = Int($0[3]) else {
		return nil
	}

	return User(name: $0[0], password: $0[1], email: $0[2], age: age, country: $0[4])
}

extension Optional {

	public func flatMap<T>(_ transform: @escaping (Wrapped) -> T?) -> T? {
		guard let x = self else {
			return nil
		}

		return transform(x)
	}
}

if let url = NSURL(string: "http://www.swiftfuncional.com"),
	let data = NSData(contentsOf: url as URL),
	let content = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue) {

	//We can use content variable here
}