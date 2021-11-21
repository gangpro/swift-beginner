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
