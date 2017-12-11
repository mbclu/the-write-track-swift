struct Invocation {
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
