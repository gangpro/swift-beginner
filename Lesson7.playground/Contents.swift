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
