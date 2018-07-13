import Foundation 

print("Hello World")

var greet = """
Haaalo friends,
How are you doing!
Cludy weather...
Boring class
Funny Friends
"""

print(greet)

let mood = "\u{1F496}"

print(mood)

if mood.isEmpty{
    print("No mood")
    
}else{

greet += mood
}
print(greet)

var team = String()
team = "Croatia"
print(team)

for i in team{
    print(i)
}

var initial : Character = "j"
team.append(initial)

team.append(" Go Go Go ")
print(team)

print("Length ot team :",team.count)

print("Start Index of team : \(team[team.startIndex])")
//print("End Index of team : \(team[team.endIndex])")

print("last character of team : \team[team.index(before:team.endIndex)])")

print("some character :\(team[team.index(after:team.startIndex)])")

print("4th character : \(team[team.index(team.startIndex,offsetBy: 3)])")

var idx = team.index(team.endIndex,offsetBy: -5)
print("\(team[idx])")

for index in greet.indices {
    print("\(greet[index])",terminator:"_")
}

for (index,value) in team.enumerated(){
    print("Index : \(index) --- Value : \(value)")
    
}


team.insert("!",at: team.endIndex)
team.insert(contentsOf: " Win it..",at: team.endIndex)

var idxG = team.index(of: "G") ??
team.endIndex
//print("idx1 : \(idx1)")

//team.remove(at: idx1)

team.removeSubrange(team.startIndex..<idxG)

var idxI = team.index(of: "t") ??
team.endIndex
var idxW = team.index(of: "W") ??
team.startIndex

var win = team[idxW..<idxI]

win = win[win.index(before:]
print("\(win)")
var idxLast = win.index(win.endIndex,offsetBy: -2)

win = win[win.startIndex...idxLast]

print("\(win)")

print(team.uppercased())

var grade : String?
grade = "A"
let finalGrade = grade ?? "F"
print("\(finalGrade)")





