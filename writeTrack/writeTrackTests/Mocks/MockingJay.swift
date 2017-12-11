import Foundation

protocol MockingJay: class {
    var invocations: [Invocation] { get set }
    func when(invoking invocation: Invocation) -> MockingJay
    func thenReturn(_ value: Any?)
    func result(for invocation: Invocation) -> Any?
}

extension MockingJay {
    func when(invoking invocation: Invocation) -> MockingJay {
        invocations.append(invocation)
        return self
    }

    func thenReturn(_ value: Any?) {
        var invocation = invocations.popLast()
        invocations.append((invocation?.setResult(to: value))!)
    }

    func result(for expectedInvocation: Invocation) -> Any? {
        return invocations.first(where: { invocation in
            invocation.parameterizedName == expectedInvocation.parameterizedName
        })?.result
    }
}
