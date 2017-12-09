class Invocation {
    var name: String
    var params: [Any]?

    init(name: String, params: [Any]? = nil) {
        self.name = name
        self.params = params
    }
}
