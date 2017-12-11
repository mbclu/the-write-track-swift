import Foundation

protocol MockingJay: class {
    var invocations: [Invocation] { get set }
    var expectedInvocations: [InvocationResult] { get set }
    func when(invoking selector: Selector) -> MockingJay
    func thenReturn(_ value: Any?)
    func result(for selector: Selector) -> Any?
}

extension MockingJay {
    func when(invoking selector: Selector) -> MockingJay {
        expectedInvocations.append(InvocationResult(selector: selector))
        return self
    }

    func thenReturn(_ value: Any?) {
        var transation = expectedInvocations.popLast()
        expectedInvocations.append((transation?.setResult(to: value))!)
    }

    func result(for selector: Selector) -> Any? {
        return expectedInvocations.first(where: { $0.selector == selector })?.result
    }
}
