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
