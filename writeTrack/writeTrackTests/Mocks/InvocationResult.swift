import Foundation

struct InvocationResult {
    var selector: Selector
    var result: Any? = nil

    init(selector: Selector) {
        self.selector = selector
    }

    mutating func setResult(to something: Any?) -> InvocationResult {
        self.result = something
        return self
    }
}
