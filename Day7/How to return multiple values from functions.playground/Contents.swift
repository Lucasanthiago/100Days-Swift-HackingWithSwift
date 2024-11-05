import Cocoa

func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user = getUser()
print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")







func getUserr() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let userr = getUserr()
print("Name: \(userr.firstName) \(userr.lastName)")
