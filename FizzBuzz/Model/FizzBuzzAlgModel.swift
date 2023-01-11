import Foundation


//let MAX = 100
//for i in 1..<MAX {
//    if i % 3 == 0 && i % 5 == 0 {
//        print("FIZZBUZZ\t", terminator: "")
//    } else if i % 3 == 0 {
//        print("FIZZ\t", terminator: "")
//    } else if i % 5 == 0 {
//        print("BUZZ\t", terminator: "")
//    } else {
//        print("\(i)\t", terminator: "")
//    }
//
//}

struct FizzBuzzAlgModel: Identifiable {
    let id = UUID()
    
    let name: String
    var commentCode: (String) -> String = { code in
        return "\\" + code
    }
    var versionNumber: Double? = nil
    var imports: String = ""
    var boilerWrapper: (String) -> String = { code in
        return code
    }
    let maxConstDefinition: String
    let loopWrapper: (String) -> String
    let print: (String) -> String
    let printInt: () -> String
    var equality: String = "=="
    var moduloSymbol: String = "%"
    let ifStatement: (String, String) -> String
    let ifElseStatement: (String, String) -> String
    let elseStatement: (String) -> String
    
    var actualFizzBuzzCode : String {
        "FizzBuzz in \(name)"
    }
    
}
