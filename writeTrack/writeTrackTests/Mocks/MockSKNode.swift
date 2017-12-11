import SpriteKit

class MockSKNode: SKNode, MockingJay {
    var invocations = [Invocation]()
    var expectedInvocations = [InvocationResult]()

    override func run(_ action: SKAction) {
        invocations.append(Function(named: "run", params: [action]))
    }
}
