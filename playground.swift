import Foundation 

print("Hello World")

print("😘","😘",separator:"🍺🍻")

var x: Int
x = 10
print ("values of \(x)")

var greet: String?
print("Hello,\(greet)")

greet = "Good Morning"
print("Hello,\( greet))")

if greet != nil{
    print (greet!)
}else{
    print ("greet id nil")
}

var temperature : Int!

print (temperature)

if temperature != nil{
print("\(temperature) is not nil")
}else{
    print("temperature is nil")
}

if let PI:Float = 3.142{

print("Pi = \(PI)")
}


let friends:[String] = ["Alay","Param","Rinku devi"]

for frnd in friends{
    print("\(frnd)")
}

var j = 1
while(j<3){
    print("\(j)")
    j = j+1
}
j=10
repeat{
    print("\(j)")
    j = j+10

}while(j<30)

j=6
switch j{
    case 10:
    print("ten")
    case 20:
    print("twenty")
    case 30:
    print("thirty")
    case 40,70,80:
    print("forty or seventy or eighty ")
case 81..<100:
print("80 to 100")
    default:
    print("Not supported")
}

let coordinate = (10,20)
switch coordinate{
    case(0,0):
    print("no canvas")
    case(_,20):
    print("y axis")
    fallthrough
    case(10,_):
    print("x axis")
    case(1...10, 1...20):
    print("within canvas")
    case(10,20):
    print("on center")
    default:
    print("canvas unavailable")
}

let range = 1...5
print(range)
print("\(range) contains 3:",range.contains(3))
print("\(range) contains 7:",range.contains(7))
print("\(range) lowerBound:",range.lowerBound)
print("\(range) upperBound:",range.upperBound)



