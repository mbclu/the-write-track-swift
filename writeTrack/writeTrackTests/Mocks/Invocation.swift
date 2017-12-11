protocol Invocation {
    var name: String { get set }
    var params: [Any?]? { get set }
    var parameterizedName: String { get }
}

struct Function: Invocation {
    var name: String
    var params: [Any?]?

    init(named name: String, params: [Any?]? = nil) {
        self.name = name
        self.params = params
    }

    var parameterizedName: String {
        guard let params = self.params else {
            return name
        }
        return "\(name)(" + params.map({"\($0.debugDescription)"}).joined(separator: ":") + ")"
    }
}
