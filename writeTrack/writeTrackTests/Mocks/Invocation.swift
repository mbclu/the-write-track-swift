import Foundation

protocol Invocation {
    var selector: Selector { get }
    var params: [Any?]? { get }
    var result: Any? { get }
    var parameterizedName: String { get }

    mutating func setResult(to something: Any?) -> Invocation
}

struct Function: Invocation {
    var selector: Selector
    var params: [Any?]?
    var result: Any? = nil

    init(forSelector selector: Selector, withParams params: [Any?]? = nil) {
        self.selector = selector
        self.params = params
    }

    mutating func setResult(to something: Any?) -> Invocation {
        self.result = something
        return self
    }

    var parameterizedName: String {
        guard let params = self.params else {
            return selector.description
        }
        return "\(selector.description)(" + params.map({"\($0.debugDescription)"}).joined(separator: ":") + ")"
    }
}

struct Getter: Invocation {
    var selector: Selector
    var params: [Any?]? = nil
    var result: Any? = nil

    init(withSelector selector: Selector) {
        self.selector = selector
    }

    mutating func setResult(to something: Any?) -> Invocation {
        self.result = something
        return self
    }

    var parameterizedName: String {
        return selector.description
    }
}
