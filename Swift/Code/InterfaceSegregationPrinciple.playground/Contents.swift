import UIKit

protocol PrinterProtocol {
    func printOut(items: [String])
}

protocol StapleProtocol {
    func staple(items: [String])
}

protocol FaxProtocol {
    func fax(items: [String])
}

protocol ScanProtocol {
    func scan(items: [String])
}

protocol PhotoCopyProtocol {
    func photoCopy(items: [String])
}

protocol MachineProtocol: PrinterProtocol,
                          StapleProtocol,
                          FaxProtocol,
                          ScanProtocol,
                          PhotoCopyProtocol {
    
}

class MultiMachine: MachineProtocol {
    
    private var printer: PrinterProtocol
    private var staple:StapleProtocol
    private var fax: FaxProtocol
    private var scan: ScanProtocol
    private var photoCopy: PhotoCopyProtocol
    
    init(printer: PrinterProtocol,
         staple: StapleProtocol,
         fax: FaxProtocol,
         scan: ScanProtocol,
         photoCopy: PhotoCopyProtocol) {
        
        self.printer = printer
        self.staple = staple
        self.fax = fax
        self.scan = scan
        self.photoCopy = photoCopy
    }
    
    func printOut(items: [String]) {
        //Do stuff
    }
            
    func staple(items: [String]) {
        //Do stuff
    }
            
    func fax(items: [String]) {
        //Do stuff
    }
        
    func scan(items: [String]) {
        //Do stuff
    }
                
    func photoCopy(items: [String]) {
        //Do stuff
    }
}

class PrinterMachine: PrinterProtocol {
    
    func printOut(items: [String]) {
        print("Now I feel great")
    }
}
