import SpriteKit

class MockSKView: SKView {
    var invocations = [Invocation]()

    override func presentScene(_ scene: SKScene?) {
        invocations.append(Invocation(name: "presentScene", params: [scene]))
    }
}
