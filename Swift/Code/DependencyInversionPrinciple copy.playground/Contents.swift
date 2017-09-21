import UIKit

protocol Messenger {
    func send()
}

class Email: Messenger {
    
    var toAddress: String?
    var subject: String?
    var content: String?
    
    func send() {
        //Send Email
    }
}

class SMS: Messenger {
    
    var phoneNumber: String?
    var message: String?
    
    func send() {
        //Send SMS
    }
}

class Notification {
    
    private var messengers: [Messenger]
    
    init(messengers: [Messenger]) {
        self.messengers = messengers
    }
    
    func send() {
        for messenger in messengers {
            messenger.send()
        }
    }
}
