import Foundation

protocol MockingJay: class {
    var invocations: [Invocation] { get set }
    var expectedInvocations: [InvocationResult] { get set }
    func when(invoking invocation: Invocation) -> MockingJay
    func thenReturn(_ value: Any?)
    func result(for invocation: Invocation) -> Any?
}

extension MockingJay {
    func when(invoking invocation: Invocation) -> MockingJay {
        expectedInvocations.append(InvocationResult(invocation: invocation))
        return self
    }

    func thenReturn(_ value: Any?) {
        var transation = expectedInvocations.popLast()
        expectedInvocations.append((transation?.setResult(to: value))!)
    }

    func result(for invocation: Invocation) -> Any? {
        return expectedInvocations.first(where: { $0.invocation.parameterizedName == invocation.parameterizedName })?.result
    }
}
