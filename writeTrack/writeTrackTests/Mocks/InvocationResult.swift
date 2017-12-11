struct InvocationResult {
    var invocation: Invocation
    var result: Any? = nil

    init(invocation: Invocation) {
        self.invocation = invocation
    }

    mutating func setResult(to something: Any?) -> InvocationResult {
        self.result = something
        return self
    }
}
