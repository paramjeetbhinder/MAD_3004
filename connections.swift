import Foundation 

print("Hello World")

var friends : [String]
friends = ["Ishav","Param","Rinkudevi","LABaburao"]

print("Friends:\(friends)")

for frnd in friends{
    print("Friends : \(frnd)")
}



for itr in 0..<friends.count{
    print("Friends\(friends[itr])")
}

for (index,value) in
    friends.enumerated(){
        print("index : \(index) value : \(value)")
}


for frnd in friends[2...]{
    print("Friends : \(frnd)")
}

for frnd in friends[...2]{
    print("Friends : \(frnd)")
}

var numbers = Array(repeating: 1, count: 4)
print("Numbers : \(numbers)")
numbers[2] = 100
print("Numbers : \(numbers)")

var more = Array(repeating: 0, count: 3)
print("more : \(more)")

var all = numbers + more
print("All : \(all)")

for (index,value) in all.enumerated(){
    print("index : \(index) value : \(value)")
}

print("all[9] \(all[3])")

var grocery = ["Eggs","Milk"]
print("Grocery : \(grocery)")

grocery.append("Rice")
grocery += ["Juice", "Sher atta"]
grocery[1...3] = ["Butter","Snacks","Ice Cream"]
grocery.insert("Veggies", at: 4)
grocery.remove( at: 3)
grocery.removeLast() 
print("Grocery : \(grocery)")


grocery.removeAll()
if grocery.isEmpty{
    print("No grocery to shop")
}else{
    print("grocery list : \(grocery)")
}

var dynamic = [Any]()
dynamic.append("JK")
dynamic.append(7191)
dynamic.append(23.34)
dynamic.append("P")
print("Dynamic : \(dynamic)")

var languages = Set<String>()
languages.insert("Hindi")
languages.insert("Punjabi")
languages.insert("Haryanvi")
languages.insert("Portuguese")
languages.insert("English")
languages.remove("English")


if languages.isEmpty{
    print("No language")
}else{
    print("\(languages.count) languages : \(languages)")

    for lang in languages.sorted(){
        print("language : \(lang)")}
}

let motherTongue = ["Punjabi","Gujrati","Portuguese","Telgu"]

print("MotherTongue : \(motherTongue)")

print("Union : \(languages.union(motherTongue).sorted())")
print("Intersection : \(languages.intersection(motherTongue).sorted())")
print("Subtracting : \(languages.subtracting(motherTongue).sorted())")
print("SymmetricDifference \(languages.symmetricDifference(motherTongue).sorted())")

//Dictionary

var namesofInt = [Int : String]()
namesofInt[20] = "Twenty"
print("value of key 20 \(namesofInt[20])")
namesofInt[2] = "Two"
print("value of key2 \(namesofInt[2])")

print("namesofInt contains \(namesofInt.count) items")

namesofInt = [:]
if namesofInt.isEmpty{
    print("No item in the dictionary")
}

var HTTPErrorCode : [Int : String] = [400 : "Bad Request", 402 : "Payment Required", 404 : "Not Found", 406 : "Not Acceptable"]

HTTPErrorCode[405] = "Method not allowed"

print("Error code List: \(HTTPErrorCode)")

let old402 = HTTPErrorCode.updateValue("Reserved for Future use", forKey: 402)
print("Error code List: \(HTTPErrorCode)")

let errMSG406 = HTTPErrorCode[406]
print("Error message for 406 \(errMSG406)")

if let errMSG403 = HTTPErrorCode[403] {
    print("Error messege for 403 \(errMSG403)")
}else{
    print("No error code 403 is available")
}

HTTPErrorCode[406] = nil
print("Error code List: \(HTTPErrorCode)")
if let removedValue =
    HTTPErrorCode.removeValue(forKey: 404){
    print ("Removed value :\(removedValue)")
}
else {
    print ("Error code 404 not available")
}

for errorCode in HTTPErrorCode.keys{
    print("Error code : \(errorCode)")
}

for errorMsg in HTTPErrorCode.values {
    print ("Error message : \(errorMsg)")
}

 for (errorCode,errorMsg) in HTTPErrorCode{
     print("Error code : \(errorCode) --- Error msg : \(errorMsg)")

}

let errorCodeList = HTTPErrorCode.keys
print("Error code list : \(errorCodeList)")

var flight = [String : AnyObject]()
flight["number"] = "AC043" as AnyObject
flight["duration"] = 14 as AnyObject
flight["cost"] = 1600.23 as AnyObject

print("Flight \(flight)") 

















