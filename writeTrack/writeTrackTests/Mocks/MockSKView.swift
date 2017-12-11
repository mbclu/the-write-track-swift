import SpriteKit

class MockSKView: SKView, MockingJay {
    var invocations = [Invocation]()
    var expectedInvocations = [InvocationResult]()

    override func presentScene(_ scene: SKScene?) {
        invocations.append(Function(named: "presentScene", params: [scene]))
    }
}
