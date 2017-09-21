import UIKit

class UserService {
    
    var database: DataBaseProtocol?
    var emailService: EmailServiceProtocol
    
    init(emailService: EmailServiceProtocol) {
        self.emailService = emailService
    }
    
    func register(email: String, password: String) throws {
        if (!emailService.validate(email: email)) {
            throw ValidationException.email("Email is invalid")
        }
        let user = User(email: email, password: password)
        database?.save(user)
        let mailMessage = MailMessage(sender: "nabil.safatli@corp.globo.com", email: email)
        emailService.send(mailMessage)
    }
}

class EmailService: EmailServiceProtocol {
    
    var smtpClient: SMTPClientProtocol?
 
    func send(_ mailMessage: MailMessage) {
        smtpClient?.send(mailMessage)
    }
    
    func validate(email: String) -> Bool {
        return email.contains("@")
    }
}

enum ValidationException: Error {
    case email(String)
}

protocol DataBaseProtocol {
    func save(_ user: User)
}

protocol SMTPClientProtocol {
    func send(_ mailMessage: MailMessage)
}

protocol EmailServiceProtocol {
    func send(_ mailMessage: MailMessage)
    func validate(email: String) -> Bool
}

class User {
    init(email: String, password: String){
        
    }
}

class MailMessage {
    init(sender: String, email: String) {
        
    }
}
