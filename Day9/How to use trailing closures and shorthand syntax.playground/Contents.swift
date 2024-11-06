import Cocoa


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]


let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}


let reverseTeam = team.sorted { $0 > $1 }
