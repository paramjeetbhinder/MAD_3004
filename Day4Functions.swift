import Foundation 

print("Hello World")

func greet(message: String){
    print("\(message)")
}

greet(message: "Good morning")

func test(){
    print("This is a test function")
}
test()

func addition(n1: Int, n2: Int){
//func addition(n1: Int, n2: Int){
    var sum: Int
    sum = n1 + n2
    print("sum of \(n1) and \(n2) is \(sum)")
}

addition(n1: 20,n2: 30)

var a = 10
var b = 20
addition(n1: a,n2: b)

func subtraction(n1: Float, _ n2 :Float){
    print("subtraction : \(n1 - n2)")
}
subtraction(n1: 23.54, 54.98765)

func mul (n1: Int, n2: Int) -> Int{
    var m = n1 * n2
    return m
}

var ans = mul(n1: 9, n2: 2)
print("mul = \(ans)")

func swape(j: Int, k: Int) -> (Int, Int){
    //functions parameters are left constant by default
    //var temp = j
    //j = k = temp
    //k = temp
    return(k,j)
}

(a,b) = swape(j: 1, k: 8)
print("a = \(a) b = \(b)")

func swap(j: inout Int, k: inout Int){
    let temp = j
    j = k
    k = temp
}

var x = 45, y = 76
swap(&x, &y)

print("x = \(x) y = \(y)")

func SI (amount: Double, years: Double, rate: Double = 2.0) -> Double{
    return ((amount*years*rate) / 100)
}
var deposit1 = SI(amount: 12000.2, years: 3, rate: 3.2)
print("deposit1 = \(deposit1)")

var deposit2 = SI(amount: 2000.25, years: 3)
print("deposit2 = \(deposit2)")

func dispcount(numbers: Int...){
    var sum = 0
    for n in numbers{
        sum += n
    }
    print("sum of arguments \(sum)")
}
dispcount(numbers: 1,2,3)
dispcount(numbers: 23,34,56,78,90)

func addArrays(arrays: [Int]...) -> [Int]{
    var a = arrays.count
    print("a = \(a)")
    
    var array1 = arrays[0]
    var array2 = arrays[1]
    var result = [Int]()
    
    if array1.count == array2.count{
        for i in 0..<array1.count{
            result.append(array1[i] + array2[i])
        }
    }
    return result
}

var ar1 = [1,2,3,4,5]
var ar2 = [9,9,9,9,9]
var s1 = addArrays(arrays: ar1, ar2)
print("s1 = \(s1)")

func add (a: Int, b: Int) -> Int{
    return (a + b)
}
print("add \(add(a: 10, b: 20))")


//function as atype
var mathOper: (Int,Int) -> Int = mul

print("mathOper \(mathOper(2,4))")

mathOper = add
print("mathOper \(mathOper(2,4))")

//function as a parameter
func callAnother(someFunc: (Int, Int) -> Int, a: Int, b: Int){
    print("some operation : \(someFunc(a,b))")
}

callAnother(someFunc: add, a: 5, b: 9)
callAnother(someFunc: mul, a: 5, b: 9)
