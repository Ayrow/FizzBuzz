
import Foundation

class FizzBuzzAlgViewModel: ObservableObject {
    @Published var fizzBuzzModels: [FizzBuzzAlgModel] = []
    
    init() {
        fizzBuzzModels = [
            .init(
                name: "Swift",
                maxConstDefinition: "let MAX = 100",
                loopWrapper: {code in
                """
                for i in 1...MAX {
                \(code)}
                """
                },
                print: {str in
                    #"print("\#(str)\t", terminator: "")"#
                },
                printInt: {
                    #"print("\(i)\t", terminator: "")"#
                },
                ifStatement: {logic, code in
                    """
                    if \(logic) {
                    \(code)
                    }
                    """
                },
                ifElseStatement: {logic, code in
                    """
                    else if \(logic) {
                    \(code)
                    }
                    """
                },
                elseStatement: {
                    code in
                        """
                        else {
                        \(code)
                        }
                        """
                }),
            .init(
                name: "C",
                versionNumber: 1.0,
                imports: "#include <stdio.h>",
                boilerWrapper: {
                    code in
                """
                int main() {
                \(code)
                }
                """
                },
                maxConstDefinition: "#define MAX 100",
                loopWrapper: {code in
                """
                for(int i = 1; i <= MAX; i++) {
                \(code)}
                """
                },
                print: {str in
                    #"printf("\#(str)\t");"#
                },
                printInt: {
                    #"printf("%d\t", i);"#
                },
                ifStatement: {logic, code in
                    """
                    if (\(logic)) {
                    \(code)
                    }
                    """
                },
                ifElseStatement: {logic, code in
                    """
                    else if (\(logic)) {
                    \(code)
                    }
                    """
                },
                elseStatement: {
                    code in
                        """
                        else {
                        \(code)
                        }
                        """
                })
        
        ]
    }
}

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
