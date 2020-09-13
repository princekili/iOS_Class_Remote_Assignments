import UIKit

// Assignment_W1  @princekili   11 Sep, 2020

// Basic

// 1. In swift, we usually define a variable through the syntax as below: ​var ​x: I​n t​= ​10  When calculating circle’s area, we use the formula: 2 * radius * Pi​ to get area. Now, please define a variable Pi and assign a value to it. You can refer to the syntax above while do think about using var or let​ and which data type it should be.

    let Pi: Double = 3.141592654 // Although Pi is an irrational number (a decimal with no end and no repeating pattern), it's still a constant. So I think that 'let' and 'Double' would be a better choice.


// 2. Create two constants x and y of type ​Int​ then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.

    let x = 8
    let y = 24
    let average = (x + y)/2


// 3. Following with Q2, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
 
//  ● Please solve this problem so that we can put the average in the record system.
    
    let Average = Double(average)
 
//  ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).

    // let a = 10/3 = 3  -> because 10 & 3 "both" are Int, so a is a constant

    // let b = 10.0/3.0 = 3.3333333  -> because 10.0 & 3.0 are Double, so b is a Double (floating-point)


// 4. Swift is a very powerful language that it can infer the data type for you (​ Type inference ​) while we still need to know the basics well. Please change the following codes into the one with data type.

    var flag: Bool = true
    var inputString: String = "Hello world."
    let bitsInBite: Int = 8
    let averageScore: Double = 86.8


// 5. Compound assignment ​ operator is very useful when programming. Please create salary as 22000, and use ​ unary plus operator ​ adding 28000 to salary, and it will be 50000 after this process.

    var salary = 22000
    salary += 28000 // = 50000


// 6. You should notice that ​‘=’​ has difference meaning in programming. In real world,​ ‘=’ means equal while In programming, ​‘=’ means ​assign​. You simply put the right hand side data into left hand side variable or constant. Now please write down the ​Equality​ operator in swift.

    // the equal-to operator is '=='


// 7. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named ​remain​.

    let a = 10
    let b = 3
    let remain = a % b


// 8. Please explain the difference between​ ​let​ and​ ​var​.

    // You declare constants with 'let'; Whereas you declare variables with 'var'.


// 9. Please write down naming conventions and rules you learned in this session.

    // UpperCamelCase is for types and protocols. Whereas everything else is lowerCamelCase


// 10. What is Type Inference in swift?

    // Type Inference means that you don't have to specify the type of every constant and variable that you declare. If you don’t specify the type of value, Swift will work out the appropriate type.


// 11. What is the problem about this piece of code?

    // You've declared that the 'phoneNumber' is type Int, so you can't assign value of type 'String' to type 'Int'


// -------------------------------------------

// Collection

// 1. Please create an empty array with String data type and save it in a variable named myFriends​.

    var myFriends = [String]()


// 2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name in to ​myFriends​ array.

    myFriends = ["Ian", "Bomi", "Kevin"]


// 3. Oops,I forget to add ‘Michael’ who is one of my best friend, please help me to add Michael to the end of ​myFriends​ array.

    myFriends.append("Michael")


// 4. Because I usually hang out with Kevin, please move Kevin to the beginning of the myFriends​ array.

    myFriends.remove(at: 2)
    myFriends.insert("Kevin", at: 0)


// 5. Use for...in to print all the friend in ​myFriends​ ​array.

    for friend in myFriends {
        print(friend)
    }


// 6. Now I want to know who is at index 5 in the ​myFriends​ array, try to find the answer for me. Please explain how did you get the answer and why the answer is it.

    myFriends.count // There are only 4 names in the array, so the index of the array is up to 3.
    // print(myFriends[5]) -> Fatal error: Index out of range


// 7. How to get the first element in an array?

    myFriends[0]


// 8. How to get the last element in an array?

    myFriends[myFriends.count - 1]


// 9. Please create an dictionary with keys of type String, value of type Int, and save it in a variable named ​myCountryNumber​.

    var myCountryNumber = [String: Int]()


// 10. Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.

    myCountryNumber = ["US": 1, "GB": 44, "JP": 81]


// 11. Change the ‘GB’ value from 44 to 0.

    myCountryNumber["GB"] = 0


// 12. How to declare a empty dictionary?
    
    var emptyDictionary = [Int: String]()


// 13. How to remove a key-value pair in a dictionary?

    myCountryNumber["GB"] = nil
    print(myCountryNumber)

    myCountryNumber.removeValue(forKey: "JP")
    print(myCountryNumber)


// -------------------------------------------

// Control Flow

// 1. Here is an array: let​ lottoNumbers = [1​0,​ 9​​, 8​,​ ​7,​ 6​​, 5​] Please use For-Loop and Range to print the last three members in the ​lottoNumbers array.

    let lottoNumbers = [10, 9, 8, 7, 6, 5]
    let range = (lottoNumbers.count - 3)...(lottoNumbers.count - 1)

    for i in range {
        print(lottoNumbers[i])
    }


// 2. Please use swift syntax to get the result as images list below: Please find a method which can help us complete these requirements.

    for number in lottoNumbers.reversed() {
        print(number)
    }

    for number in lottoNumbers {
        if number % 2 == 0 {
            print(number)
        }
    }


// 3. Please use while loop to solve above question.

    var n = lottoNumbers.count - 1
    while n >= 0 {
        print(lottoNumbers[n])
        n -= 1
    }

    n = 0
    while n < lottoNumbers.count {
        print(lottoNumbers[n])
        n += 2
    }


// 4. Please use repeat-while loop to solve question 2.

    n = lottoNumbers.count - 1
    repeat {
        print(lottoNumbers[n])
        n -= 1
    } while n >= 0

    n = 0
    repeat {
        print(lottoNumbers[n])
        n += 2
    } while n < lottoNumbers.count


// 5. What are the differences between while and repeat-while?

    // 'while' evaluates its condition at the start of each pass through the loop.; 'repeat-while' evaluates its condition at the end of each pass through the loop.


// 6. Here is variable ​isRaining​ to record the weather. Please write a statement that if the weather is raining, print ​“It’s raining, I don’t want to work today.”​, otherwise print “Although it’s sunny, I still don’t want to work today.”

    var isRaining = false

    if isRaining {
        print("It’s raining, I don’t want to work today.")
    } else {
        print("Although it’s sunny, I still don’t want to work today.")
    }


// 7. In a company, we usually use numbers to represent job levels. Let’s make a example. We have four job levels : Member, Team Leader, Manager, Director. We use 1 to present Member, 2 to Team Leader, 3 to Manager, 4 to Director. Now, create a variable name ​jobLevel​ and assign a number to it. If jobLevel number is in our list, print the relative job title name; if not, just print ​“We don't have this job”​. Please use switch statement to complete this requirement.

    var jobLevel = 1

    switch jobLevel {
    case 1:
        print("Member")
    case 2:
        print("Team Leader")
    case 3:
        print("Manager")
    case 4:
        print("Director")
    default:
        print("We don't have this job.")
    }


// -------------------------------------------

// Function

// 1. Please declare a function named ​greet​ with ​person​ as argument label and ​name​ as parameter name. This ​greet​ function will return a String. For example, if you call the function greet like this: greet​(person: ​"Celeste"​) It will return string: ​“Hello, Celeste”​.

    func greet(person name: String) -> String {
        return "Hello, \(name)"
    }

    greet(person: "Prince")


// 2. Please declare a function named ​multiply​ with two argument ​a​ , ​b​ , and with no return value that when you call this function, compiler will print out the result of ​a * b​. Be noticed that we want to give argument ​b​ with a ​default value​ 10.

    func multiply(a: Int, b: Int = 10) {
        print(a * b)
    }

    multiply(a: 5)
    multiply(a: 5, b: 20)


// 3. What’s the difference between argument label and pararmeter name in function?

    // The argument label is used when calling the function; the parameter name is used in the implementation of the function.


// 4. What are the return type in the following statements?

    // func​ birthday( ) -> ​String​ { }  the return type is 'String'

    // func​ payment( ) -> ​Double { }  the return type is 'Double'
