#2021 SwiftUI Tutorial for Beginners (3.5 hour Masterclass)

> CodeWithChris 유튜브 : [YouTube](https://youtu.be/F2ojC6TNwws)
> Xcode13.1 다운로드 : [Download](https://developer.apple.com/xcode)



## Day 1 - App Development Overview



## Day 2 - Introduction to Xcode



## Day 3 - Build SwiftUI User Interfaces

```swift
//
//  ContentView.swift
//  uitest
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        Text("Hello !!")
            .padding(.all)
            .background(Color.green
                            .blur(radius: /*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/))
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```



## Day 4 - SwiftUI Views and Containers

```swift
//
//  ContentView.swift
//  uitest
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack {
                Spacer()
                Text("Hello !!")
                Spacer()
                Text("Hello !!")
                Spacer()
            }
            
            Spacer()
            
        }

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


```



## Day 5 - SwiftUI War Card Game UI Construction

```swift
//
//  ContentView.swift
//  war-challenge
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                    
                }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack {
                    
                    Spacer()

                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```



## Day 6 - Variables, Constants and Data Types

```swift
// String. Xcode won't treat this as code
"hello"

var myVar:String = "hello"
//= var myVar = "hello"
print(myVar)

// Int
12
10

var myInt:Int = 100
//= var myInt = 100
print(myInt)

// Double
0.4
1.2

// Boolean
true
false

// var & let
let myConst:String = "hello"
//!= myConst = "world"
print(myConst)

```



## Day 7 - Swift Programming: Functions

```swift
// 함수 함수명(파라미터:타입) -> 리턴 타입
func myFunc(a:Int) -> Int {
    
    let b = 20
    
    return a + b
    
}
let mySum = myFunc(a: 5)
print(mySum)



// 여러개 파라미터 set
func myFunc2(a:Int, b:Int) -> Int {
    
    return a + b
    
}
print(myFunc2(a: 2, b: 3))



// 파라미터 default set
func myFunc(a:Int, b:Int = 0) -> Int {
    
    return a + b
    
}
print(myFunc(a: 2, b: 3))
print(myFunc(a: 1))



// 파라미터 약어 set
func myFunc(firstNumber a:Int, secondNumber b:Int = 0) -> Int {
    return a + b
}
print(myFunc(firstNumber: 1, secondNumber: 3))



// 파라미터 약어 set
func myFunc(_ a:Int, _ b:Int = 0) -> Int {
    return a + b
}
print(myFunc(1, 2))


// 같은 함수 myFunc 을 호출해도 형태를 볼 수 있음.

```



## Day 8 - Swift Programming: Structures

```swift
// struct 네이밍 대문자로 시작
// func 네이밍 소문자로 시작
struct ChatView {
    
    // struct 안에는 아래와 같이 올 수 있음.
    // 변수(Variables) and 상수(Constants)
    // 함수(Functions)
    
    // Properties
    var message:String = "" //= var message = ""
    var messageWithPrefix:String {
        // 한 줄의 경우 return 안 써도 됨. 여러 줄의 경우는 당연히 return 키워드 써야 함.
        //= "Gangpro says: " + message
        return "Gangpro says: " + message
    }
    
    // View Code for this screen
    
    // Methods
    func sendChat() {
        
        // Code to send the chat message
        print(messageWithPrefix)
        
    }
    
    func deleteChat() {
        
        print(messageWithPrefix)

    }
    
}

```



## Day 9 - Swift Programming: Instances

```swift
struct MyStructure {
    
    var message = "Hello"
    
    func myFunction() {
        
        print(message)
        
    }
    
}

// 인스턴스 생성 방법
//= var a = MyStructure()
var a:MyStructure = MyStructure()

// 인스턴스 접근 방법 : 인스턴스명 + .
a.message = "Hi"
a.myFunction()
print(a.message) //= Hi

var b = MyStructure()
b.message = "World"
print(b.message) //= World

```

```swift
// 인스턴스 private 설정 방법
struct DatabaseManager {
    
    private var serverName = "Server 1"
    
    private func saveData(data:String) -> Bool {
        
        print(serverName)
        
        // This code saves the data and returns a boolean result
        return true
        
    }
    
}

struct ChatView {
    
    var message = "Hello"
    
    func sendChat() {
        
        // Save the chat message
        var db = DatabaseManager()
        
        // db 인스턴스 안에 func이 private 속성을 갖고 있기 때문에 호출이 안됨
        let success = db.saveData(data: message)
        
        // Check the successful boolean value, if unseuccessful show alert to user
        
    }
    
}

```

```swift
//
//  ContentView.swift
//  test-project
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

// 구조 구조이름: 프로토콜
struct ContentView: View {
    
    // Properties
    var body: some View {
        
        // View Code
        
        // Text 인스턴스
        Text("Hello, world!")
            // .padding 메소드
            .padding()
    }
    
    // Methods
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
                .previewDevice("iPhone 11")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPod touch (7th generation)")
        }
    }
}

```





## Day 10 - SwiftUI Buttons

> sf-symbols 다운로드 : [다운로드](https://developer.apple.com/sf-symbols/)

```swift
//
//  ContentView.swift
//  ButtonDemo
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            // 버튼 인스턴스 set 1
            // Button instance with closure
            Button("Click Me", action: {
                print("Hello world!")
            })
            
            // 버튼 인스턴스 set 2
            // Button instance with trailing closure
            Button("Click Me") {
                print("Hello World!!")
            }
            
            // 버튼 인스턴스와 라벨 set
            Button(action: {
                print("Hello World!!!")
            }, label: {
                
                HStack {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
                
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```



## Day 11 - SwiftUI State Properties

```swift
//
//  ContentView.swift
//  war-challenge
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    
    // State Properties set
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    // Generate a random nuber between 2 and 14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    // Update the score
                    playerScore += 1
                    cpuScore += 1
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))  // int -> String
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)) // int -> String
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```



## Day 12 - Swift Programming: If Statements

```swift
let a = 1
let b = 2
let c = 3
let d = "hello"
let e = false
let f = true
let g = true
let h = "world"

// &&(and)
// ||(or)
// >, < >=, <=, ==, !=
// !
if (f || e) && (a > 0) {
    print("Hello World")
}
else if d > h {
    
}
else if !g {
    
}
else {
    print("Catch All")
}

```

```swift
//
//  ContentView.swift
//  war-challenge
//
//  Created by KANG on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    
    // State Properties set
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    // Generate a random nuber between 2 and 14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    // Update the score
                    if playerRandom > cpuRandom {
                        playerScore += 1
                    }
                    else if playerRandom < cpuRandom {
                        cpuScore += 1
                    }
                    else {
                        // playerRandom == cpuRandom
                        print("playerRandom == cpuRandom")
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))  // int -> String
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)) // int -> String
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```



## Day 13 - Bonus Challenge

```swift
skip
```



## Day 14 - What’s Next?

```text
1. More Views and Containers
2. More Types of Apps
3. More Swift and Xcode
4. MVVM(Model / View / ViewModel)
5. More Frameworks

```

























































































