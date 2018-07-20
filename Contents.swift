// task 1
// 1.1

let a = "1"
let b = "5"
let c = "7even"
let d = "10"
let e = "9ine"

let a1 = Int(a) ?? 0
let b1 = Int(b) ?? 0
let c1 = Int(c) ?? 0
let d1 = Int(d) ?? 0
let e1 = Int(e) ?? 0

let sum = a1 + b1 + c1 + d1 + e1

let str1 = (Int(a) != nil) ? a : "nil"
let str2 = (Int(b) != nil) ? b : "nil"
let str3 = (Int(c) != nil) ? c : "nil"
let str4 = (Int(d) != nil) ? d : "nil"
let str5 = (Int(e) != nil) ? e : "nil"

print ("\(a1) + \(b1) + \(c1) + \(d1) + \(e1) = \(sum)")

print ("\(str1) + "+" \(str2) + "+" \(str3) + "+" \(str4) + "+" \(str5) = \(sum)")




//task 2
//2.1

let year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for x in 1...year.count {
    print ("Month \(x) has \(year[x-1])")
}

//2.2

let monthArray = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for i in 0..<monthArray.count {
    print ("\(monthArray[i]) has \(year[i]) days")
}

//2.3

let monthTuples = [("Jan", 31), ("Feb", 28), ("Mar", 31), ("Apr", 30), ("May", 31), ("Jun", 30), ("Jul", 31), ("Aug", 31), ("Sep", 30), ("Oct", 31), ("Nov", 30), ("Dec", 31)]

for y in monthTuples {
    print (y)
}

//2.4

for y in monthTuples.reversed() {
    print (y)
}

//2.5

let date = (month: "May", day: 9)

var summ = 0

for (month, days) in monthTuples {
    if date.0 == month {break}
    summ += days
}
summ += date.1

// task 3
//3.1
let (firstCons, secondCons, thirdCons, fourthCons, fifthCons) = ("10", "pr1vet", "1o", "4", "6ix")

let optionalArray = [Int(firstCons), Int(secondCons), Int(thirdCons), Int(fourthCons), Int(fifthCons)]

var optionalSumm = 0
for i in optionalArray {
    if let x = i {
        optionalSumm = optionalSumm + x
    }
}
print ("With optional binding summ = \(optionalSumm)")

//3.2

summ = 0
for i in optionalArray {
    if i != nil {
        summ = summ + i!
    }
}
print ("With force unwrap summ = \(summ)")

//3.3

summ = 0
for i in optionalArray {
    let i = i ?? 0
    summ = summ + i
}
print ("With ?? summ = \(summ)")




