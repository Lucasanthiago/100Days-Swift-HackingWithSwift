import Cocoa

var olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2020: "Tokyo",
    2024: "Paris",
]

print(olympics[2016])
print(olympics[2016, default: "Not Found"])

