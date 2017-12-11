import SpriteKit

class MockSKNode: SKNode, MockingJay {
    var invocations = [Invocation]()
    var expectedInvocations = [InvocationResult]()

    override func run(_ action: SKAction) {
        invocations.append(Invocation(named: "run", params: [action]))
    }
}
