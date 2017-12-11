import SpriteKit

class MockSKView: SKView, MockingJay {
    var invocations = [Invocation]()
    var expectedInvocations = [InvocationResult]()

    override func presentScene(_ scene: SKScene?) {
        invocations.append(Invocation(named: "presentScene", params: [scene]))
    }
}
